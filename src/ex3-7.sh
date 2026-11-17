#!/bin/sh

if [ $# -ne 1 ]; then
    echo "사용법: sh $0 폴더이름"
    exit 1
fi

mkdir -p "$1"
cd "$1" || exit 1

for i in 0 1 2 3 4; do
    touch "file$i.txt"
    mkdir -p "file$i"
    ln -sf "../file$i.txt" "file$i/file$i.txt"
done
