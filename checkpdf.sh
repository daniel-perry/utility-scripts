#! /bin/bash

# check a pdf for a word

doc=$1
word=$2

matches=`pdftotext $doc - 2> /dev/null | grep -ni $word`
if [ -n "$matches" ]
then
	#for line in $matches
	while read -r line
	do
		echo "${doc}:${line}"
	done <<< "$matches"
fi

