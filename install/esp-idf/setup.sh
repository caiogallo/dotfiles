#!/usr/bin/env bash

sudo pacman -S --noconfirm --needed gcc git make flex bison gperf python cmake ninja ccache dfu-util libusb

trap 'rm -rf esp-idf' EXIT

git clone -b v5.4.1 --recursive https://github.com/espressif/esp-idf.git

cd esp-idf

./install.sh esp32
