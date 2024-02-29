PWD=$(shell pwd)

install:
	@ln -s $(PWD)/gitconfig ~/.gitconfig
	@ln -s $(PWD)/zshrc ~/.zshrc
	@ln -s $(PWD)/vimrc ~/.vimrc

clean: 
	@rm ~/.gitconfig ~/.zshrc

generate-ssh-key:
	ssh-keygen -t ed25519 -C "caio.gallo@gmail.com"

install-ohmyzsh:
	@wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
	sh install.sh
	@rm install.sh

install-neovim:
	@curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
	sudo rm -rf /opt/nvim
	sudo tar -C /opt -xzf nvim-linux64.tar.gz

	@mkdir -p /home/deck/.config/nvim
	@cp init.vim /home/deck/.config/nvim

all: clean install

