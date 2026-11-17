#!/bin/sh

my_ls() {
    echo "함수 안으로 들어 왔음"
    ls "$@"
}

echo "프로그램을 시작합니다."
my_ls "$@"
echo "프로그램을 종료합니다."
