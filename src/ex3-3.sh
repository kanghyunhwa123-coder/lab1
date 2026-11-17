#!/bin/sh

grade() {
    awk -v s="$1" 'BEGIN { print (s >= 90) ? "A" : "B" }'
}

printf "점수: "
read SCORES

COUNT=0
SUM=0
for s in $SCORES; do
    COUNT=$((COUNT + 1))
    SUM=$((SUM + s))
    echo "과목$COUNT: $s $(grade "$s")"
done

AVG=$(awk -v s=$SUM -v c=$COUNT 'BEGIN { printf "%.2f", s / c }')
echo "평균: $AVG $(grade "$AVG")"
