#!/usr/bin/env bash

sudo pacman -S --noconfirm --needed firefox
sudo pacman -S --noconfirm --needed git neovim base-devel less
sudo pacman -S --noconfirm --needed tldr
sudo pacman -S --noconfirm --needed fzf
sudo pacman -S --noconfirm --needed tmux
sudo pacman -S --noconfirm --needed go

# hyprland
sudo pacman -S --noconfirm --needed waybar wl-clipboard hyprpolkitagent hyprlock

paru -S --noconfirm --needed hyprshot

#bluetooth
sudo pacman -S --noconfirm --needed blueman

#network
#sudo pacman -S --noconfirm --needed networkmanager

# XDG Portal
sudo pacman -S --noconfirm --needed xdg-desktop-portal-hyprland

sudo pacman -Rns pulseaudio
sudo pacman -S --noconfirm --needed pipewire wireplumber pipewire-pulse pipewire-alsa pavucontrol
