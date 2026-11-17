#!/bin/sh

if [ $# -ne 2 ]; then
    echo "사용법: sh $0 숫자1 숫자2"
    exit 1
fi

echo "$1 + $2 = $(($1 + $2))"
echo "$1 - $2 = $(($1 - $2))"
echo "$1 * $2 = $(($1 * $2))"
if [ "$2" -eq 0 ]; then
    echo "$1 / $2 = 0으로 나눌 수 없음"
else
    echo "$1 / $2 = $(($1 / $2))"
fi
