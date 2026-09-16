#!/usr/bin/env bash
# Correção do lua-language-server: versão linux-x64 (a migration anterior baixou o darwin-x64/macOS por engano)
rm -rf ~/.lsp/lua-language-server
mkdir -p ~/.lsp/lua-language-server
wget https://github.com/LuaLS/lua-language-server/releases/download/3.18.2/lua-language-server-3.18.2-linux-x64.tar.gz -O lls.tar.gz
CHECKSUM=sha256:ca71415dd19f19e30aaa35a4915aefca9fdb5fec31b98331cc3d77f778d539c5
echo "${CHECKSUM}  lls.tar.gz" | sha256sum -c -
tar xvfz lls.tar.gz -C ~/.lsp/lua-language-server
rm lls.tar.gz