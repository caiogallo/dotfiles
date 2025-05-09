PWD=$(shell pwd)

install:
	@ln -s $(PWD)/gitconfig ~/.gitconfig
	@ln -s $(PWD)/hyprland.conf ~/.config/hypr/hyprland.conf
	@ln -s $(PWD)/bashrs ~/.bashrc

clean: 
	@rm ~/.gitconfig 
	@rm ~/.config/hypr/hyprland.conf
	@rm ~/.bashrc

all: clean install

