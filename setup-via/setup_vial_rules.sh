#!/bin/bash
echo 'KERNEL=="hidraw*", SUBSYSTEM=="hidraw", ATTRS{idVendor}=="3434", ATTRS{idProduct}=="0af0", MODE="0660", GROUP="users", TAG+="uaccess", TAG+="udev-acl"' | sudo tee -a /etc/udev/rules.d/99-vial.rules > /dev/null
sudo mkinitcpio -P
