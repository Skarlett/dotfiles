#!/usr/bin/env bash
# Stores a bunch of aliases
# Skarlett
####
# Terminal Editor
export EDITOR="nvim"
alias vim=$EDITOR
alias nano=$EDITOR
alias edit=$EDITOR
alias e=$EDITOR

### 
# Git
alias gl="'/usr/bin/ls' --color=auto -d \$(git ls-tree -rt \$(git branch | grep \\* | cut -d \" \" -f2) --name-only)"
alias gr="git reset --soft HEAD^"
alias ghr="git reset --hard HEAD^"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gd='git diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/" | less -r'

####
# Helpers
alias cp="cp -i -r"
alias df="df -h"
alias free="free -m"
alias more="less"
alias netstat="ss -lntup"
alias tmux="tmux -u"
alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"
alias clr="clear"
alias cls="clear"

alias tcurl="curl --socks5 127.0.0.1:9050 "


####
# Extras
alias vol="pactl -- set-sink-volume 0"
alias explore="xdg-open ."
alias vscode="/usr/bin/code"
alias clipboard="xclip -selection c"
alias psg='ps aux | grep'
alias open="xdg-open"

####
# Python
alias py2="python2"
alias py3="python3"
alias pip2="python -m pip"
alias pip3="python3 -m pip"

#############
# ls
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

