#! /bin/bash

# finds a pdf doc with a word in it

dir=$1
word=$2

find $dir -name '*.pdf' -exec bash /Users/dperry/code/scripts/checkpdf.sh {} $word \;

