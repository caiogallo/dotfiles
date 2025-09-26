#!/usr/bin/env bash

grep -rL "NoDisplay" /usr/share/applications/ | xargs -I{} sudo sh -c "echo 'NoDisplay=true' >> {}"

BASEDIR=$(dirname $0)
sudo cp ${BASEDIR}/firefox.desktop /usr/share/applications/firefox.desktop
sudo cp ${BASEDIR}/geforcenow-electron.desktop /usr/share/applications/geforcenow-electron.desktop
sudo cp ${BASEDIR}/org.kde.dolphin.desktop /usr/share/applications/org.kde.dolphin.desktop
sudo cp ${BASEDIR}/kitty.desktop /usr/share/applications/kitty.desktop
sudo cp ${BASEDIR}/nvim.desktop /usr/share/applications/nvim.desktop
sudo cp ${BASEDIR}/obsidian.desktop /usr/share/applications/obsidian.desktop
sudo cp ${BASEDIR}/timeshift-gtk.desktop /usr/share/applications/timeshift-gtk.desktop
sudo cp ${BASEDIR}/tlpui.desktop /usr/share/applications/tlpui.desktop
sudo cp ${BASEDIR}/virt-manager.desktop /usr/share/applications/virt-manager.desktop
