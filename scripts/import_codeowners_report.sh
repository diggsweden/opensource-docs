#!/usr/bin/env bash
# SPDX-FileCopyrightText: 2026 Digg - Agency for Digital Government
# SPDX-License-Identifier: CC0-1.0

set -euo pipefail

REPORT=""
OUTPUT=""
SOURCE_COMMIT=""
IMPORTED_AT="${IMPORTED_AT:-}"

usage() {
  cat <<'EOF'
Usage: import_codeowners_report.sh --report PATH --output PATH [--source-commit SHA] [--imported-at TIMESTAMP]

Imports the structured CODEOWNERS JSON report as Hugo data.
Requires jq.
EOF
}

require_value() {
  local option="$1"
  local value="${2:-}"

  if [ -z "$value" ]; then
    echo "Missing value for $option" >&2
    usage >&2
    exit 1
  fi
}

parse_args() {
  while [ "$#" -gt 0 ]; do
    case "$1" in
      --report)
        require_value "$1" "${2:-}"
        REPORT="${2:-}"
        shift 2
        ;;
      --output)
        require_value "$1" "${2:-}"
        OUTPUT="${2:-}"
        shift 2
        ;;
      --source-commit)
        require_value "$1" "${2:-}"
        SOURCE_COMMIT="${2:-}"
        shift 2
        ;;
      --imported-at)
        require_value "$1" "${2:-}"
        IMPORTED_AT="${2:-}"
        shift 2
        ;;
      -h|--help)
        usage
        exit 0
        ;;
      *)
        echo "Unknown argument: $1" >&2
        usage >&2
        exit 1
        ;;
    esac
  done
}

require_command() {
  local command_name="$1"

  if ! command -v "$command_name" >/dev/null 2>&1; then
    echo "$command_name is required" >&2
    exit 1
  fi
}

validate_inputs() {
  [ -n "$REPORT" ] || {
    echo "Missing --report" >&2
    usage >&2
    exit 1
  }

  [ -n "$OUTPUT" ] || {
    echo "Missing --output" >&2
    usage >&2
    exit 1
  }

  [ -f "$REPORT" ] || {
    echo "Report not found: $REPORT" >&2
    exit 1
  }
}

set_imported_at() {
  if [ -z "$IMPORTED_AT" ]; then
    IMPORTED_AT="$(date -u +"%Y-%m-%dT%H:%M:%SZ")"
  fi
}

validate_report() {
  jq -e '
    .schema_version == 1 and
    (.source | type == "object") and
    (.summary | type == "object") and
    (.repositories | type == "array") and
    (.summary.total_repositories == (.repositories | length))
  ' "$REPORT" >/dev/null || {
    echo "Invalid CODEOWNERS JSON report: $REPORT" >&2
    exit 1
  }
}

write_import() {
  jq \
    --arg imported_at "$IMPORTED_AT" \
    --arg source_commit "$SOURCE_COMMIT" '
      (.source.json_report_path // .source.report_path // .source.path) as $report_path |
      . + {
        imported_at: $imported_at,
        source: (.source + {
          commit: (if $source_commit == "" then null else $source_commit end),
          path: $report_path,
          report_path: $report_path
        } + if .source.scope_path == null then {} else {scope_path: .source.scope_path} end)
      }
    ' "$REPORT" > "$tmp_output"
}

validate_output() {
  jq -e '
    (.imported_at | type == "string") and
    (.source.repository | type == "string") and
    (.source.commit == null or (.source.commit | type == "string")) and
    (.source.report_path | type == "string") and
    ((.source | has("scope_path") | not) or (.source.scope_path | type == "string"))
  ' "$tmp_output" >/dev/null
}

preserve_imported_at_if_unchanged() {
  local previous_imported_at

  [ -f "$OUTPUT" ] || return 0
  jq -e '.imported_at | type == "string"' "$OUTPUT" >/dev/null 2>&1 || return 0

  jq -S 'del(.imported_at)' "$OUTPUT" > "$tmp_previous"
  jq -S 'del(.imported_at)' "$tmp_output" > "$tmp_current"

  if cmp -s "$tmp_previous" "$tmp_current"; then
    previous_imported_at="$(jq -r '.imported_at' "$OUTPUT")"
    jq --arg imported_at "$previous_imported_at" '.imported_at = $imported_at' "$tmp_output" > "$tmp_current"
    mv "$tmp_current" "$tmp_output"
  fi
}

main() {
  parse_args "$@"
  require_command jq
  validate_inputs
  set_imported_at
  validate_report

  mkdir -p "$(dirname "$OUTPUT")"
  tmp_output="$(mktemp)"
  tmp_previous="$(mktemp)"
  tmp_current="$(mktemp)"
  trap 'rm -f "$tmp_output" "$tmp_previous" "$tmp_current"' EXIT

  write_import
  validate_output
  preserve_imported_at_if_unchanged

  mv "$tmp_output" "$OUTPUT"
  rm -f "$tmp_previous" "$tmp_current"
  trap - EXIT

  echo "Imported CODEOWNERS report from $REPORT to $OUTPUT"
}

main "$@"
