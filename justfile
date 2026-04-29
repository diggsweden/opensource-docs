# SPDX-FileCopyrightText: 2026 Digg - Agency for Digital Government
#
# SPDX-License-Identifier: CC0-1.0
#
# Project tasks. Run `just` to list recipes.

set shell := ["bash", "-euo", "pipefail", "-c"]

_default:
    @just --list

# Run hugo dev server with the production URL prefix.
serve:
    hugo server --baseURL http://localhost:1313/opensource-docs/ --appendPort=false

# Audit a running site at the given URL with pa11y.
# Example: just a11y-url https://diggsweden.github.io/opensource-docs/
a11y-url url:
    BASE_URL="{{url}}" npx --yes pa11y-ci@4 --config .pa11yci.cjs

# Boot hugo locally, run pa11y against it, then stop hugo.
a11y:
    #!/usr/bin/env bash
    set -euo pipefail
    base_url="http://localhost:1313/opensource-docs/"
    hugo server --baseURL "$base_url" --appendPort=false --logLevel error >/tmp/hugo-a11y.log 2>&1 &
    pid=$!
    trap 'kill "$pid" 2>/dev/null || true; wait "$pid" 2>/dev/null || true' EXIT
    for _ in $(seq 1 30); do
      if curl -fs -o /dev/null "${base_url}sv/"; then
        break
      fi
      sleep 1
    done
    curl -fs -o /dev/null "${base_url}sv/" || {
      echo "hugo did not become ready at ${base_url}sv/" >&2
      cat /tmp/hugo-a11y.log >&2
      exit 1
    }
    BASE_URL="$base_url" npx --yes pa11y-ci@4 --config .pa11yci.cjs
