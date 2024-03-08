#!/bin/bash

INPUT="${1:-Ottolenghi-Simple_index.txt}"

echo "Input index labled = $INPUT"

sed '/^,/d' "$INPUT" | \
sort | \
uniq | \
sed 's/,/|/' | \
# awk -F'|' '{print $2}'
awk -F'|' '{if ($1 ~ /^.*S.*/) {print $0}}' # S recipes
# awk -F'|' '{if ($1 ~ /^.*[S|M].*[S|M].*/) {print $0}}' # S or M recipes

# TODO: make a for loop for each letter SIMPLE.
