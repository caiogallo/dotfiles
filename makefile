
install:
	@ln -s `pwd`/gitconfig ~/.gitconfig

clean: 
	@rm ~/.gitconfig

generate-ssh-key:
	ssh-keygen -t ed25519 -C "caio.gallo@gmail.com"

install-ohmyzsh:
	@wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
	sh install.sh
	@rm install.sh

all: clean install

