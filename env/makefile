PWD=$(shell pwd)

install:
	@ln -s $(PWD)/gitconfig ~/.gitconfig
	@ln -s $(PWD)/hyprland.conf ~/.config/hypr/hyprland.conf
	@ln -s $(PWD)/bashrc ~/.bashrc
	@ln -s $(PWD)/tmux.config ~/.tmux.config
	@ln -s ${PWD}/../nvim ~/.config/nvim
clean: 
	@rm -rf ~/.gitconfig 
	@rm -rf ~/.config/hypr/hyprland.conf
	@rm -rf ~/.bashrc
	@rm -rf ~/.tmux.config
	@rm -rf ~/.config/nvim

all: clean install

