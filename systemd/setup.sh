#/usr/bin/env bash

BASEDIR=$(dirname $0)
sudo cp ${BASEDIR}/* /usr/lib/systemd/system/.

sudo systemctl enable --now grub-btrfsd.service
sudo grub-mkconfig -o /boot/grub/grub.cfg
