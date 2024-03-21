#!/bin/bash
cat "$1" \
	| ./headings.sh \
	| ./links.sh \
	> "$2"
