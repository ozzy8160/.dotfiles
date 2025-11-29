#!/usr/bin/env bash
##########
##bashrc##
#########
if [ ! -f ~/.bashrc ]; then
  ln -sf ~/.dotfiles/bashrc/.bashrc ~
else
  echo ".bashrc ok  "
 fi
if [ ! -f ~/.bash_profile ]; then
  ln -sf ~/.dotfiles/bashrc/.bash_profile ~
else
  echo ".bash_profiles ok  "
fi
############
##starship##
############
if [ ! -f ~/.config/starship.toml ]; then
  ln -sf ~/.dotfiles/starship/startship.toml ~/.config
else
  echo "starship ok  "
fi
#########
##pywal##
#########
if [ ! -f ~/.config/wal/templates/colors-hyprland.conf ]; then
  cp hypr/colors-hyprland.conf ~/.config/wal/templates/
else
  echo "colors-hyprland.conf ok  "
fi
############
##hyprland##
############
if [ ! -f ~/.config/hypr ]; then
  git clone https://github.com/ozzy8160/hyprland.git hypr
  ln -sf ~/.dotfiles/hypr ~/.config
else
  echo "hyprland ok  "
fi
##########
##waybar##
##########
if [ ! -f ~/.config/waybar ]; then
  git clone -b dev https://github.com/ozzy8160/waybar.git
  ln -sf ~/.dotfiles/waybar ~/.config
else
  echo "waybar ok  "
fi
#############
##fastfetch##
#############
if [ ! -f ~/.config/fastfetch ]; then
  ln -sf ~/.dotfiles/fastfetch ~/.config
else
  echo "fastfetch ok  "
fi
#############
##nvim##
#############
if [ ! -f ~/.config/nvim ]; then
  git clone -b dev https://github.com/ozzy8160/neovim-config.git
  ln -sf ~/.dotfiles/nvim ~/.config
else
  echo "nvim ok  "
fi
#########
##kitty##
#########
if [ ! -f ~/.config/kitty ]; then
  ln -sf ~/.dotfiles/kitty ~/.config
else
  echo "kitty ok  "
fi
