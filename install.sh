#!/usr/bin/bash

# Install yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -r yay

# Install basic environment
sudo pacman -S i3-gaps compton rofi sxhkd flatpak
yay -S polybar

# Install applications
sudo pacman -S terminator firefox geary nautilus
yay -S visual-studio-code-bin enpass-bin
flatpak install com.discordapp.Discord com.dropbox.Client