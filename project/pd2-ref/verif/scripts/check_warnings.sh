#!/usr/bin/bash
res=`cat - | grep -c -i "warning"`
if [[ "$res" -ne 0 ]] ; then
  echo -e "\e[1;31m warning(s) found \e[0m"
  exit 1
else
  exit 0
fi
