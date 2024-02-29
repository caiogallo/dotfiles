
install:
	@ln -s `pwd`/gitconfig ~/.gitconfig

clean: 
	@rm ~/.gitconfig

generate-ssh-key:
	ssh-keygen -t ed25519 -C "caio.gallo@gmail.com"

all: clean install

