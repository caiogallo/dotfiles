#!/usr/bin/env bash
# Dependência do plugin Phone Connect para navegar arquivos do celular via SFTP (dolphin)
sudo pacman -S --noconfirm sshfs
# Handler de URI kdeconnect:// para o dolphin
xdg-mime default org.kde.dolphin.desktop x-scheme-handler/kdeconnect