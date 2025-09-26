#!/usr/bin/env bash

sudo pacman -S --noconfirm --needed firefox
sudo pacman -S --noconfirm --needed git neovim base-devel less dmidecode
sudo pacman -S --noconfirm --needed tldr
sudo pacman -S --noconfirm --needed fzf
sudo pacman -S --noconfirm --needed tmux
sudo pacman -S --noconfirm --needed go 
sudo pacman -S --noconfirm --needed jq

# hyprland
sudo pacman -S --noconfirm --needed waybar hyprpolkitagent hyprlock hypridle

#bluetooth
sudo pacman -S --noconfirm --needed blueberry

#network
#sudo pacman -S --noconfirm --needed networkmanager

# XDG Portal
sudo pacman -S --noconfirm --needed xdg-desktop-portal-hyprland

# Audio
sudo pacman -S --noconfirm --needed pipewire wireplumber pipewire-pulse pipewire-alsa wiremix pamixer

# Fonts
sudo pacman -S --noconfirm --needed fontconfig
sudo pacman -S --noconfirm --needed ttf-jetbrains-mono-nerd

# Power control, battery threshould, performance profiles
sudo pacman -S --noconfirm --needed tlp
sudo systemctl enable --now tlp.service
paru -S --noconfirm --needed tlpui

# Bright control
sudo pacman -S --noconfirm --needed brightnessctl

sudo pacman -S --noconfirm --needed swayosd
sudo systemctl enable --now swayosd-libinput-backend.service # gst-plugin-pipewire

sudo pacman -S --noconfirm --needed timeshift
paru -S --noconfirm --needed timeshift-autosnap

#docker 
sudo pacman -S --noconfirm --needed docker docker-compose
sudo usermod -aG docker $USER

# zenbook Audio
sudo pacman -S --noconfirm --needed sof-firmware

# apps
sudo pacman -S --noconfirm --needed obsidian obs-studio
