#!/bin/bash

set -e

ICONV_ENCODING=${ICONV_ENCODING:-WINDOWS-1251}

for f in "$@"; do
  cp "$f" "$f.bak"
  iconv -f "${ICONV_ENCODING}" -t UTF-8 "$f" > "$f.tmp"

  if cmp -s "$f" "$f.tmp"; then
    rm -f "$f.bak" "$f.tmp"
  else
    mv "$f.tmp" "$f"
  fi
done
