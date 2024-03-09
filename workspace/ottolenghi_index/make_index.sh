#!/bin/bash

INPUT="${1:-Ottolenghi-Simple_index.txt}"

sed '/^,/d' $INPUT | \
sed '/^Index/d' | \
sort | \
uniq | \
sed 's/,/|/' \
> tmp_sorted_file.txt

# awk -F'|' '{if ($1 ~ /^.*S.*/) {print $0}}' # S recipes
# awk -F'|' '{if ($1 ~ /^.*[S|M].*[S|M].*/) {print $0}}' # S or M recipes

for LETTER in $(echo "S I M P L E" | fold  -w1)
do
  echo "$LETTER|" > ./$LETTER.txt
  echo "----- | -----" >> ./$LETTER.txt
  PATTERN="^.*$LETTER.*"
  # echo "PATTERN = $PATTERN"
  awk -F'|' -v pattern=$PATTERN '{if ($1 ~ pattern) {print $0}}' tmp_sorted_file.txt >> ./$LETTER.txt
  echo "" >> ./$LETTER.txt
done

cat ./S.txt ./I.txt ./M.txt ./P.txt ./L.txt ./E.txt > SIMPLE_index.txt

for LETTER in $(echo "S I M P L E" | fold  -w1)
do
  rm ./$LETTER.txt
done
