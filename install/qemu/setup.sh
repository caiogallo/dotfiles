#!/usr/bin/env bash
# https://tanis.codes/posts/virt-manager-qemu-arch-linux/

sudo pacman -S --noconfirm --needed libvirt virt-manager qemu-full dnsmasq dmidecode
sudo systemctl enable --now libvirtd.service virtlogd.service
