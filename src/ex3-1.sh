#!/bin/sh

count=$1

#print
i=0
while [ "$i" -le "$count" ]
do
    echo "hello world"
    i=$((i + 1))
done

exit 0
