PWD=$(shell pwd)

install:
	@ln -s $(PWD)/gitconfig ~/.gitconfig
	@ln -s $(PWD)/hyprland.conf ~/.config/hypr/hyprland.conf
	@ln -s $(PWD)/bashrc ~/.bashrc
	@ln -s $(PWD)/tmux.config ~/.tmux.config
	@ln -s ${PWD}/../nvim ~/.config/nvim
	@ln -s ${PWD}/waybar ~/.config/waybar
clean: 
	@rm -rf ~/.gitconfig 
	@rm -rf ~/.config/hypr/hyprland.conf
	@rm -rf ~/.bashrc
	@rm -rf ~/.tmux.config
	@rm -rf ~/.config/nvim
	@rm -rf ~/.config/waybar

all: clean install

