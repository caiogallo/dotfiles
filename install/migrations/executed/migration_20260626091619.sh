#!/usr/bin/env bash
rm -rf ~/.lsp/lua-language-server
mkdir -p ~/.lsp/lua-language-server
wget https://github.com/LuaLS/lua-language-server/releases/download/3.18.2/lua-language-server-3.18.2-darwin-x64.tar.gz -O lls.tar.gz
CHECKSUM=sha256:e26cfefe423dd7326fc7c649539e4d4aaa4f35f34d2fefd8af2ed7090b72c556
echo "${CHECKSUM}  lls.tar.gz" | sha256sum -c -
tar xvfz lls.tar.gz -C ~/.lsp/lua-language-server
rm lls.tar.gz

