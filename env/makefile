PWD=$(shell pwd)

install:
	@ln -fs $(PWD)/gitconfig ~/.gitconfig
	@ln -fs $(PWD)/bashrc ~/.bashrc
	@ln -fs $(PWD)/tmux.config ~/.tmux.conf
	@ln -fs ${PWD}/../nvim ~/.config
	@ln -fs ${PWD}/waybar ~/.config
	@ln -fs ${PWD}/kitty ~/.config
	@ln -fs ${PWD}/XCompose ~/.XCompose
	@ln -fs ${PWD}/hypr ~/.config/
	@mkdir -p ~/.config/pipewire/pipewire.conf.d; ln -fs ${PWD}/echo-cancel.conf ~/.config/pipewire/pipewire.conf.d/echo-cancel.conf
	@mkdir -p ~/.config/fontconfig; cp ${PWD}/fonts.conf ~/.config/fontconfig/fonts.conf
	
	@mkdir -p ~/.assets; cp assets/lock_background.jpg ~/.assets/lock_background.jpg

	@sudo cp ${PWD}/timeshift-autosnap.conf /etc/timeshift-autosnap.conf
	@sudo cp ${PWD}/pacman.conf /etc/pacman.conf
	@sudo cp ${PWD}/ykfde.conf /etc/ykfde.conf

clean: 
	@rm -rf ~/.gitconfig 
	#@rm -rf ~/.config/hypr/hyprland.conf
	@rm -rf ~/.bashrc
	@rm -rf ~/.tmux.conf
	@rm -rf ~/.config/nvim
	@rm -rf ~/.config/waybar
	@rm -rf ~/.config/kitty
	@rm -rf ~/.XCompose
	#@rm -rf ~/.config/hypr/hypridle.conf
	#@rm -rf ~/.config/hypr/hyprlock.conf
	@rm -rf ~/.config/fontconfig/fonts.config
	@rm -rf ~/.config/pipewire/pipewire.conf.d/echo-cancel.conf

	@rm -rf ~/.assets

	@sudo rm -rf /etc/timeshift-autosnap.conf
	@sudo rm -rf /etc/pacman.conf
	@sudo rm -rf /etc/ykfde.conf


all: clean install
