#!/bin/sh

if [ "$1" = "-n" ]; then
    echo "$2 $3" > DB.txt
else
    echo "$1 $2" >> DB.txt
fi
