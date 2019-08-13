#!/usr/bin/env bash

rustdocs() {
  if  (($# != 1)); then
    echo "this tool downloads rust documentation for all the projects in a directory"
    echo "usage: rustfmt <projects root directory>"
  fi
  
  for file in $(find $1 -name "Cargo.toml"); do
    dir=$(dirname $file);
    pushd $dir;
      cargo doc
    popd
  done
}
