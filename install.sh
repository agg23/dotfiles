#!/usr/bin/bash

# Install stow
sudo pacman -S stow

# Grab dotfiles
cd ~
git clone https://github.com/agg23/dotfiles.git
cd dotfiles

# Setup basic dotfiles
stow x11
stow fonts
stow wallpapers
stow autostart

stow i3
stow compton
stow gtk
stow polybar
stow rofi
stow sxhkd
stow terminator

# Install yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -r yay

# Install X
sudo pacman -S xorg xorg-xinit

# Install basic environment
sudo pacman -S i3-gaps compton rofi sxhkd feh flatpak arc-gtk-theme
yay -S polybar ttf-material-design-icons

# Install applications
sudo pacman -S terminator firefox geary nautilus
yay -S visual-studio-code-bin enpass-bin
flatpak install com.discordapp.Discord com.dropbox.Client