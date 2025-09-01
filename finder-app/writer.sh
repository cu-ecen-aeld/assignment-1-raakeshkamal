#!/bin/bash

if [ "$#" == 2 ]; then
  writefile=$1
  writestr=$2
else
  exit 1
fi


writedir=$(dirname "$writefile")
mkdir -p "$writedir"
touch "$writefile"
echo "$writestr" > "$writefile"





