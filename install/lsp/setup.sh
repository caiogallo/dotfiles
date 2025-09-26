#!/usr/bin/env bash

sudo paru -S --noconfirm --needed luarocks
sudo paru -S --noconfirm --needed bash-language-server

rm -rf ~/.lsp/lua-language-server
mkdir -p ~/.lsp/lua-language-server
wget https://github.com/LuaLS/lua-language-server/releases/download/3.14.0/lua-language-server-3.14.0-linux-x64.tar.gz -O lls.tar.gz
tar xvfz lls.tar.gz -C ~/.lsp/lua-language-server
rm lls.tar.gz

#go install golang.org/x/tools/gopls@latest
#
mkdir -p ~/.local/bin
curl -L https://github.com/rust-lang/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > ~/.local/bin/rust-analyzer
chmod +x ~/.local/bin/rust-analyzer
