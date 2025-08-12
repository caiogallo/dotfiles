#!/usr/bin/env bash
sudo pacman -S --noconfirm --needed rustup
rustup default stable
rustup component add rust-src
rustup component add rust-analyzer
