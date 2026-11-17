#!/bin/sh

if [ $# -ne 1 ]; then
    echo "사용법: sh $0 폴더이름"
    exit 1
fi

[ -d "$1" ] || mkdir "$1"
cd "$1" || exit 1

touch file0.txt file1.txt file2.txt file3.txt file4.txt
tar -cf "$1.tar" file0.txt file1.txt file2.txt file3.txt file4.txt

mkdir -p "$1"
tar -xf "$1.tar" -C "$1"
