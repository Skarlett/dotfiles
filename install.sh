#!/bin/sh
set -e

hash_file() {
  # First arg is the filename
  md5sum $HOME/.config/bashrc/alias | cut -d ' ' -f 1
}

main() {
  if [ ! -e $HOME ]; then
    echo "Must be ran on account with \$HOME set."
    exit 1;
  fi      
        
  if [ -e $HOME/.config/bashrc ]; then
     echo "Already installed?"
     echo "remove $HOME/.config/bashrc and rerun installer"
     exit 1
  fi

  git clone --recursive https://github.com/Skarlett/dotfiles
  
  mv dotfiles/.local/* $HOME/.local/
  mv dotfiles/.config/* $HOME/.config/

  echo "" >> $HOME/.bashrc/
  echo "source $HOME/.config/bashrc/load.sh # Added by Skarlett/dotfiles" >> $HOME/.bashrc
  
  echo "installing packages..."
  set -x
  sudo mv $HOME/.config/bashrc/pkg/sizeof-pl/sizeof.pl /usr/local/bin/sizeof

  local PREV=$PWD
  cd $HOME/.config/bashrc/pkg/Bash-snippets/
  sudo ./install.sh all
  cd $PREV
  curl https://i.jpillora.com/dedup! | sudo bash
  
  alias_hash=$(hash_file $HOME/.config/bashrc/alias)
  
  while true; do
    nano "$HOME/.config/bashrc/alias"
    if [ $alias_hash = "$(hash_file $HOME/.config/bashrc/alias)" ]; then
      echo "No changes were made to the configuration."
      echo "This configuration might break 'ls' 'nano' 'vi' "
      echo "Are you sure? [y/N]: "
    
      read -p "$* [y/N]: " yn
      case $yn in
        [Yy]*) break ;;  
        *) continue ;;
      esac
    fi
    break
  done
  
  echo "loading in changes"
  echo "execute the following to apply the changes..."
  echo "\t\tsource ~/.bashrc"
  echo "You may delete the dotfiles/ directory now."
}

main
