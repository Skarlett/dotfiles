#!/usr/bin/env bash

root=$(dirname $0)

source $root/profile
source $root/alias.sh

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
