#!/bin/bash
sudo usermod -aG  input $USER
sudo rm -rf /etc/udev/rules.d/99-yubikey-persistent.rules
echo 'KERNEL=="hidraw*", ATTRS{idVendor}=="1050", ATTRS{bInterfaceNumber}=="00", SYMLINK+="yubikey-hidraw-otp", MODE="0666"' | sudo tee -a /etc/udev/rules.d/99-yubikey-persistent.rules > /dev/null
echo 'KERNEL=="hidraw*", ATTRS{idVendor}=="1050", ATTRS{bInterfaceNumber}=="01", SYMLINK+="yubikey-hidraw-fido", MODE="0666"' | sudo tee -a /etc/udev/rules.d/99-yubikey-persistent.rules > /dev/null

sudo udevadm control --reload-rules
sudo udevadm trigger
