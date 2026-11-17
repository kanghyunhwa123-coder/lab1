#!/bin/sh

printf "x: "
read XS

for x in $XS; do
    awk -v x="$x" 'BEGIN { printf "x = %s, y = %g\n", x, 0.5 * x * x }'
done
