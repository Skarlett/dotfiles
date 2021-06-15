#!/usr/bin/env bash

root=$(dirname $0 2>/dev/null)

if [[ ${#root} -eq 0 ]]; then # fix for ubuntnu
  root="$HOME/.config/bashrc"
fi

PATH=$PATH:$HOME/.local/bin
export PATH

source $root/profile
source $root/alias
source $root/functions

# Case-insensitive globbing (used in pathname expansion)
#shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
#shopt -s histappend;

# Autocorrect typos in path names when using `cd`
#shopt -s cdspell;

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
	shopt -s "$option" 2> /dev/null;
done;
