PWD=$(shell pwd)

install:
	@ln -s $(PWD)/gitconfig ~/.gitconfig
	@ln -s $(PWD)/hyprland.conf ~/.config/hypr/hyprland.conf
	@ln -s $(PWD)/bashrc ~/.bashrc
	@ln -s $(PWD)/tmux.config ~/.tmux.config
	@ln -s ${PWD}/../nvim ~/.config/nvim
	@ln -s ${PWD}/waybar ~/.config/waybar
	@ln -s ${PWD}/kitty ~/.config/kitty
	@ln -s ${PWD}/XCompose ~/.XCompose
	@ln -s ${PWD}/hypridle.conf ~/.config/hypr/hypridle.conf
	@ln -s ${PWD}/hyprlock.conf ~/.config/hypr/hyprlock.conf
	@mkdir -p ~/.config/fontconfig; cp ${PWD}/fonts.conf ~/.config/fontconfig/fonts.conf
	
	@mkdir -p ~/.assets; cp assets/lock_background.jpg ~/.assets/lock_background.jpg

	@sudo cp ${PWD}/timeshift-autosnap.conf /etc/timeshift-autosnap.conf
	@sudo cp ${PWD}/pacman.conf /etc/pacman.conf

clean: 
	@rm -rf ~/.gitconfig 
	@rm -rf ~/.config/hypr/hyprland.conf
	@rm -rf ~/.bashrc
	@rm -rf ~/.tmux.config
	@rm -rf ~/.config/nvim
	@rm -rf ~/.config/waybar
	@rm -rf ~/.config/kitty
	@rm -rf ~/.XCompose
	@rm -rf ~/.config/hypr/hypridle.conf
	@rm -rf ~/.config/hypr/hyprlock.conf
	@rm -rf ~/.config/fontconfig/fonts.config

	@rm -rf ~/.assets

	@sudo rm -rf /etc/timeshift-autosnap.conf
	@sudo rm -rf /etc/pacman.conf


all: clean install
