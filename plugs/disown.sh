#!/usr/bin/env bash

betterdisown() {
  if [[ $@ -eq 0 ]]; then
    disown    	
  else
    $1 2>&1 &
    disown
  fi
}

alias disown="betterdisown "
