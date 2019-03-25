#!/bin/bash

echo creating symbolic links

rm ~/.zshrc
rm ~/.config/terminator/config
rm ~/.gitconfig

ln -s `pwd`/zshrc ~/.zshrc
ln -s `pwd`/terminator_config ~/.config/terminator/config
ln -s `pwd`/gitconfig ~/.gitconfig

echo installing default apps

sudo pacman -S git zsh terminator firefox python
