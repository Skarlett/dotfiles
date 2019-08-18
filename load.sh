#!/usr/bin/env bash

root=$(dirname $0)

source $root/profile
source $root/alias.sh


# without checking if they're loaded in          
# quickly check if we have the functions we need,
#requires_plug() {
#  if [! -f $root/plugs/$1 ]; then
#     # echo "requires $root/plugs/$1"
#     return 1
#  else
#     return 0
#  fi
#}

#requires_bin() {
#  IFS=':' read -ra paths <<< $PATH
#  for p in "${paths[@]}"; do
#    
#  done
#  $PATH
#}


# Make local global exec blob
PATH=$root/bin:$PATH


# Load plugs
for plug in $root/plugs/*
do
	source $plug
	if [[ $? != 0 ]]; then
		echo "$plug failed";
	fi
done
