#/usr/bin/env bash

BASEDIR=$(dirname $0)
sudo cp ${BASEDIR}/grub /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg
