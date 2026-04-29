#!/usr/bin/env bash
# SPDX-FileCopyrightText: 2026 Digg - Agency for Digital Government
# SPDX-License-Identifier: CC0-1.0

set -euo pipefail

usage() {
  cat <<'EOF'
Usage: import_openssf_scorecard_report.sh --report PATH --scope PATH --output PATH [--scope-org ORG]

Imports an OpenSSF Scorecard Monitor Markdown report as public Hugo JSON data.
Requires jq.
EOF
}

trim() {
  local value="$1"
  value="${value//$'\r'/}"
  value="${value#"${value%%[![:space:]]*}"}"
  value="${value%"${value##*[![:space:]]}"}"
  printf '%s' "$value"
}

parse_link() {
  LINK_TEXT=""
  LINK_URL=""
  local cell="$1"
  local link_re='\[([^]]+)\]\(([^)]*)\)'

  if [[ "$cell" =~ $link_re ]]; then
    LINK_TEXT="${BASH_REMATCH[1]}"
    LINK_URL="${BASH_REMATCH[2]}"
    return 0
  fi

  return 1
}

REPORT=""
SCOPE=""
SCOPE_ORG="diggsweden"
OUTPUT=""

while [ "$#" -gt 0 ]; do
  case "$1" in
    --report)
      REPORT="${2:-}"
      shift 2
      ;;
    --scope)
      SCOPE="${2:-}"
      shift 2
      ;;
    --scope-org)
      SCOPE_ORG="${2:-}"
      shift 2
      ;;
    --output)
      OUTPUT="${2:-}"
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

command -v jq >/dev/null 2>&1 || {
  echo "jq is required" >&2
  exit 1
}

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

[ -n "$SCOPE" ] || {
  echo "Missing --scope" >&2
  usage >&2
  exit 1
}

[ -f "$REPORT" ] || {
  echo "Report not found: $REPORT" >&2
  exit 1
}

[ -f "$SCOPE" ] || {
  echo "Scope not found: $SCOPE" >&2
  exit 1
}

declare -A exclude_list=()

jq -e --arg org "$SCOPE_ORG" '."github.com"[$org] | type == "object"' "$SCOPE" >/dev/null || {
  echo "Scope has no github.com/$SCOPE_ORG entry" >&2
  exit 1
}

while IFS= read -r repo || [ -n "$repo" ]; do
  [ -n "$repo" ] || continue
  exclude_list["$SCOPE_ORG/$repo"]=1
done < <(jq -r --arg org "$SCOPE_ORG" '."github.com"[$org].excluded[]?' "$SCOPE")

tmp_rows="$(mktemp)"
trap 'rm -f "$tmp_rows"' EXIT

in_table=0
row_count=0
skipped_other_org_count=0
excluded_count=0

while IFS= read -r line || [ -n "$line" ]; do
  line="$(trim "$line")"

  if [[ "$line" != \|* ]]; then
    [ "$in_table" -eq 1 ] && break
    continue
  fi

  IFS='|' read -r -a raw_cells <<< "$line"
  cells=()
  for ((i = 1; i < ${#raw_cells[@]}; i++)); do
    cells+=("$(trim "${raw_cells[$i]}")")
  done

  [ "${#cells[@]}" -gt 0 ] || continue

  if [ "${cells[0]}" = "Repository" ]; then
    in_table=1
    continue
  fi

  [ "$in_table" -eq 1 ] || continue
  [[ "${cells[0]}" =~ ^[-:[:space:]]+$ ]] && continue
  [ "${#cells[@]}" -ge 6 ] || continue

  parse_link "${cells[0]}" || continue
  repo_name="$LINK_TEXT"
  repo_url="$LINK_URL"

  if [[ "$repo_name" != "$SCOPE_ORG/"* ]]; then
    skipped_other_org_count=$((skipped_other_org_count + 1))
    continue
  fi

  if [ "${#exclude_list[@]}" -gt 0 ] && [ -n "${exclude_list[$repo_name]+x}" ]; then
    excluded_count=$((excluded_count + 1))
    continue
  fi

  commit_short=""
  commit_url=""
  commit=""
  if parse_link "${cells[1]}"; then
    commit_short="$LINK_TEXT"
    commit_url="$LINK_URL"
    commit="${commit_url##*/}"
  fi

  score_json="null"
  if [[ "${cells[2]}" =~ ^[-+]?[0-9]+([.][0-9]+)?$ ]]; then
    score_json="${cells[2]}"
  fi

  date_value=""
  if [ "${cells[3]}" != "-" ]; then
    date_value="${cells[3]}"
  fi

  delta_json="null"
  if [[ "${cells[4]}" =~ ^([+-]?[0-9]+([.][0-9]+)?) ]]; then
    delta_json="${BASH_REMATCH[1]}"
  fi

  details_url=""
  if parse_link "${cells[4]}"; then
    details_url="$LINK_URL"
  fi

  report_url=""
  if parse_link "${cells[5]}"; then
    report_url="$LINK_URL"
  fi

  jq -c -n \
    --arg name "$repo_name" \
    --arg url "$repo_url" \
    --arg date "$date_value" \
    --arg commit "$commit" \
    --arg commit_short "$commit_short" \
    --arg commit_url "$commit_url" \
    --arg details_url "$details_url" \
    --arg report_url "$report_url" \
    --argjson score "$score_json" \
    --argjson delta "$delta_json" \
    '{
      name: $name,
      url: $url,
      score: $score,
      date: (if $date == "" then null else $date end),
      commit: (if $commit == "" then null else $commit end),
      commit_short: (if $commit_short == "" then null else $commit_short end),
      commit_url: (if $commit_url == "" then null else $commit_url end),
      delta: $delta,
      details_url: (if $details_url == "" then null else $details_url end),
      report_url: (if $report_url == "" then null else $report_url end),
      status: (if $score == null then "missing_scorecard_data" else "available" end)
    }' >> "$tmp_rows"

  row_count=$((row_count + 1))
done < "$REPORT"

if [ "$row_count" -eq 0 ]; then
  echo "No report rows found after filtering." >&2
  exit 1
fi

mkdir -p "$(dirname "$OUTPUT")"
jq \
  --arg source_repository "diggsweden/digg-scorecard-monitor" \
  --arg source_path "reporting/openssf-scorecard-report.md" \
  -s '
    sort_by(.name | ascii_downcase) as $repos |
    ($repos | map(select(.score != null) | .score)) as $scores |
    ($repos | map(select(.date != null) | .date) | max) as $generated_at |
    {
      schema_version: 1,
      source: {
        repository: $source_repository,
        path: $source_path
      },
      generated_at: $generated_at,
      summary: {
        total_repositories: ($repos | length),
        repositories_with_score: ($scores | length),
        repositories_without_score: (($repos | length) - ($scores | length)),
        average_score: (if ($scores | length) > 0 then (($scores | add) / ($scores | length) * 10 | round / 10) else null end),
        lowest_score: (if ($scores | length) > 0 then ($scores | min) else null end),
        highest_score: (if ($scores | length) > 0 then ($scores | max) else null end)
      },
      repositories: $repos
    }
  ' "$tmp_rows" > "$OUTPUT"

[ "$skipped_other_org_count" -eq 0 ] || echo "Skipped $skipped_other_org_count repositories outside $SCOPE_ORG."
[ "$excluded_count" -eq 0 ] || echo "Excluded $excluded_count repositories from the public report."
echo "Wrote $row_count repositories to $OUTPUT"
