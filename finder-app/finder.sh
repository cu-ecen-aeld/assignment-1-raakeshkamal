#!/bin/bash

if [ "$#" == 2 ]; then
  filesdir=$1
  searchstr=$2
else
  exit 1
fi

if ! [[ -d "$filesdir" ]]; then
  exit 1
fi

X=$(grep -r -l "$searchstr" "$filesdir" | wc -l)
Y=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $X and the number of matching lines are $Y"





