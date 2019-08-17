#!/usr/bin/env bash
###################
# Detach process from shell
# outputs pipes to null
###################

spawn() {
  if [[ $# -eq 0 ]]; then
    disown
  else
    $@ > /dev/null 2>&1 &; disown 
  fi
}

