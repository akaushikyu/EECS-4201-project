#!/usr/bin/bash
output=$(cat -)
res=`echo "$output" | grep -c -i "FATAL\|ERROR"`
if [[ "$res" -ne 0 ]] ; then
  echo "$output"
  exit 1
else
  echo "$output"
  exit 0
fi
