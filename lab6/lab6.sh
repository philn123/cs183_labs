#!/bin/bash
# ps -N -u root -o comm,etimes
test=$(ps -N -u root -o comm,pid,etimes,pcpu | awk '{ if ($3 > 120 && $4 > 0) print $2}')

while IFS= read -r line
do
    echo "Killing: $line"
    kill -9 $line
done <<< "$test"


