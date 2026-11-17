#!/bin/sh

DATA=""

avg() {
    echo "$DATA" | awk 'NF==2 { s += $2; c++ } END { if (c) printf "%.2f", s / c; else printf "0" }'
}

while true; do
    echo "==================="
    echo "1) 과목 성적 추가"
    echo "2) 입력된 모든 점수 보기"
    echo "3) 평균 점수 확인"
    echo "4) 평균 등급 (GPA) 변환"
    echo "5) 종료"
    echo "==================="
    read MENU

    case "$MENU" in
    1)
        printf "과목명: "; read NAME
        printf "점수: ";   read SCORE
        DATA="$DATA
$NAME $SCORE"
        ;;
    2)
        echo "$DATA" | awk 'NF==2 { print $1, $2 }'
        ;;
    3)
        avg; echo
        ;;
    4)
        awk -v a="$(avg)" 'BEGIN {
            if (a >= 95) print "A+ (4.5)"; else if (a >= 90) print "A (4.0)";
            else if (a >= 85) print "B+ (3.5)"; else if (a >= 80) print "B (3.0)";
            else if (a >= 75) print "C+ (2.5)"; else if (a >= 70) print "C (2.0)";
            else if (a >= 65) print "D+ (1.5)"; else if (a >= 60) print "D (1.0)";
            else print "F (0.0)" }'
        ;;
    5)
        break
        ;;
    esac
done
