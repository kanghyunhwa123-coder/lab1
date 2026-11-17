#!/bin/sh

while true; do
    echo "==========================="
    echo "1) 사용자 정보"
    echo "2) GPU 또는 CPU 사용률 확인"
    echo "3) 메모리 사용량 확인"
    echo "4) 디스크 사용량 확인"
    echo "5) 종료"
    echo "==========================="
    read MENU
    case "$MENU" in
        1) id ;;
        2) if command -v nvidia-smi >/dev/null 2>&1; then nvidia-smi
           else top -b -n 1 | head -n 5; fi ;;
        3) free -h ;;
        4) df -h ;;
        5) break ;;
    esac
done
