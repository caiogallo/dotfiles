
install:
	@ln -s `pwd`/gitconfig ~/.gitconfig

clean: 
	@rm ~/.gitconfig

all: clean install

