#!/bin/sh

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
    
  mv dotfiles/.local/* $HOME/.local
  mv dotfiles/.config/* $HOME/.config
  echo "\nsource $HOME/.config/bashrc/load.sh # Added by Skarlett/dotfiles" >> $HOME/.bashrc
  
  echo "installing packages..."
  set -x
  sudo mv $HOME/.config/bashrc/pkg/sizeof-pl/sizeof.pl /usr/local/bin/sizeof

  local PREV=$PWD
  cd $HOME/.config/bashrc/pkg/Bash-snippets/
  sudo ./install.sh all
  cd $PREV
  curl https://i.jpillora.com/dedup! | sudo bash
  
  alias_hash=$(md5sum "$HOME/.config/bashrc/alias")
  
  while true; do
    nano "$HOME/.config/bashrc/alias"
    if [ $alias_hash -eq $(md5sum "$HOME/.config/bashrc/alias") ]; then
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
  source $HOME/.bashrc
}

main