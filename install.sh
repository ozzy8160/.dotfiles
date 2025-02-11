#!/usr/bin/env bash

cd ~/.config

unlink hypr
unlink waybar
unlink fastfetch
unlink nvim
unlink starship.toml
unlink kitty
unlink flakes
unlink .bashrc

ln -s ~/.dotfiles/hypr ~/.config
ln -s ~/.dotfiles/waybar ~/.config
ln -s ~/.dotfiles/starship/startship.toml ~/.config
ln -s ~/.dotfiles/fastfetch ~/.config
ln -s ~/.dotfiles/nvim ~/.config
ln -s ~/.dotfiles/kitty ~/.config

sudo mv /etc/nixos/* ~/.dotfiles/bak
ln -s ~/.dotfiles/flakes/* /etc/nixos/

ln -s ~/.dotfiles/bashrc/.bashrc ~
