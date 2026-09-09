#!/usr/bin/env bash
# Migrar gerenciamento de energia de tlp para power-profiles-daemon (usado pelo DMS)
sudo pacman -S --noconfirm power-profiles-daemon
sudo systemctl enable --now power-profiles-daemon.service
sudo pacman -Rns --noconfirm tlp tlpui