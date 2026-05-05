PWD=$(shell pwd)

install:
	@ln -s ${PWD}/../nvim ~/.config/nvim
	@ln -s ./bindings.conf ~/.config/hypr/bindings.conf
	@ln -s ./monitors.conf ~/.config/hypr/monitors.conf
	@ln -s ./hyprland.conf ~/.config/hypr/hyprland.conf

clean: 
#	@rm -rf ~/.gitconfig 
#	@rm -rf ~/.config/hypr/hyprland.conf
#	@rm -rf ~/.bashrc
#	@rm -rf ~/.tmux.conf
#	@rm -rf ~/.config/nvim
#	@rm -rf ~/.config/waybar
#	@rm -rf ~/.config/kitty
#	@rm -rf ~/.XCompose
#	@rm -rf ~/.config/hypr/hypridle.conf
#	@rm -rf ~/.config/hypr/hyprlock.conf
#	@rm -rf ~/.config/fontconfig/fonts.config
#	@rm -rf ~/.config/pipewire/pipewire.conf.d/echo-cancel.conf
#
#	@rm -rf ~/.assets
#
#	@sudo rm -rf /etc/timeshift-autosnap.conf
#	@sudo rm -rf /etc/pacman.conf
#	@sudo rm -rf /etc/ykfde.conf


all: clean install
