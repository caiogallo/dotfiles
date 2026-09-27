#!/usr/bin/env bash
# Diagnóstico de shutdown: console visível durante poweroff.
# Bug: systemctl poweroff -> tela preta, LED ligado, precisa segurar botão.
# O systemd-shutdown só loga no console (oculto por 'quiet'); essa migration
# remove 'quiet', sobe o loglevel e desativa blank do console para vermos se
# o hang é no systemd-shutdown ou no firmware (última linha "reboot: Power down").
set -euo pipefail

sudo cp /home/caio/Projects/dotfiles/grub/grub /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg

grep -q 'GRUB_CMDLINE_LINUX_DEFAULT="loglevel=7 consoleblank=0"' /etc/default/grub
