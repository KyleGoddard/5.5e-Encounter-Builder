#!/usr/bin/env bash
# Regenerates lib/creatures/custom/index.json from the files in that directory.
# Run this after adding or removing a custom creature file.
DIR="$(cd "$(dirname "$0")/.." && pwd)/lib/creatures/custom"
OUT="$DIR/index.json"

files=$(ls "$DIR"/*.json 2>/dev/null | grep -v '/index\.json$' | xargs -I{} basename {})

printf '[\n' > "$OUT"
first=true
for f in $files; do
  if [ "$first" = true ]; then
    first=false
  else
    printf ',\n' >> "$OUT"
  fi
  printf '  "%s"' "$f" >> "$OUT"
done
printf '\n]\n' >> "$OUT"

echo "Updated $OUT"
