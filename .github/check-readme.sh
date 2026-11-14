#!/usr/bin/env bash
# Checks one Markdown file: exactly one H1, no em dash, and links that only
# point at the profile or the studio site. Exit 0 passes, exit 1 fails.
set -u
file="${1:?usage: check-readme.sh <file>}"
fail=0

test -s "$file" || { echo "FAIL: $file is missing or empty"; exit 1; }

h1=$(grep -c '^# ' "$file")
if [ "$h1" -ne 1 ]; then echo "FAIL: expected exactly one H1, found $h1"; fail=1; fi

if grep -n $'\xe2\x80\x94' "$file"; then echo "FAIL: em dash found"; fail=1; fi

bad=$(grep -oE 'https?://[^) >`]+' "$file" | sort -u |
  grep -vE '^https://(github\.com/vgrosetti-maker(/|$)|nordleads\.org(/|$))')
if [ -n "$bad" ]; then echo "FAIL: link outside the allowed hosts:"; echo "$bad"; fail=1; fi

[ "$fail" -eq 0 ] && echo "OK: $file"
exit "$fail"
