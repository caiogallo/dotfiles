
install:
	@ln -s `pwd`/gitconfig ~/.gitconfig
	@ln -s 'pwd'/zshrc ~/.zshrc

clean: 
	@rm ~/.gitconfig ~/.zshrc

generate-ssh-key:
	ssh-keygen -t ed25519 -C "caio.gallo@gmail.com"

install-ohmyzsh:
	@wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
	sh install.sh
	@rm install.sh

all: clean install

