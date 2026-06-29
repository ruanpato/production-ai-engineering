#!/usr/bin/env bash
# i18n parity: every language under content/ must have the SAME set of relative
# Markdown paths. Mirrored filenames are required (translate content, not paths).
set -euo pipefail
cd "$(dirname "$0")/.."

langs=(content/*/)
[ ${#langs[@]} -lt 2 ] && { echo "Single language — parity OK."; exit 0; }

ref="${langs[0]}"
ref_list="$(cd "$ref" && find . -name '*.md' | sort)"
fail=0
for d in "${langs[@]}"; do
  cur="$(cd "$d" && find . -name '*.md' | sort)"
  if [ "$cur" != "$ref_list" ]; then
    echo "::error::Path mismatch between ${ref} and ${d}:"
    diff <(echo "$ref_list") <(echo "$cur") || true
    fail=1
  fi
done

# Every content file should carry the language switcher / front matter title.
missing="$(grep -L '^title:' $(find content -name '*.md') 2>/dev/null || true)"
[ -n "$missing" ] && { echo "::warning::files without front-matter title:"; echo "$missing"; }

[ "$fail" -eq 0 ] && echo "Bilingual parity OK ($(echo "$ref_list" | grep -c . ) files per language)."
exit "$fail"
