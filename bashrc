#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

PATH=$PATH:~/.local/bin:$HOME/.cargo/bin:~/.local/bin/zig:$HOME/.local/bin/lua-lang-server/bin:$HOME/go/bin

alias vim=nvim

function create_ramdisk() {
    mkdir -p ~/ramdisk
    sudo mount -t tmpfs -o size=1G tmpfs ~/ramdisk
}

function config_ssh_auth() {
    unset SSH_AUTH_SOCK
    export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
    gpgconf --launc gpg-agent
}
config_ssh_auth

. "$HOME/.cargo/env"
