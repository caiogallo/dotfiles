#!/bin/bash
sudo usermod -aG  input $USER
sudo rm /etc/udev/rules.d/99-keychron.rules
echo 'KERNEL=="hidraw*", SUBSYSTEM=="hidraw", ATTRS{idVendor}=="3434", ATTRS{idProduct}=="0af0", MODE="0660", GROUP="caio", TAG+="uaccess", TAG+="udev-acl"' | sudo tee -a /etc/udev/rules.d/99-keychron.rules > /dev/null
sudo udevadm control --reload-rules
sudo udevadm trigger
