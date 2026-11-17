#!/bin/sh

case "$1" in
set)
    grep -q '^export MYENV=' ~/.bashrc || echo 'export MYENV="Hello Shell"' >> ~/.bashrc
    ;;
unset)
    sed -i '/^export MYENV=/d' ~/.bashrc
    ;;
*)
    echo "사용법: sh $0 set | unset"
    exit 1
    ;;
esac
