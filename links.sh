#!/bin/bash
while read line
do
	echo "$line" | sed "s/\[\([^|]*\)|\([^]]*\)\]/[\2](\1)/g"
done
