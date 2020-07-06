#!/bin/bash

if [[ -d "export PATH=$PATH:./bin" ]]
then 
	echo "PATH EXISTING"
else
	echo "source ./.aliases">>~/.bashrc
	echo "source ./fancy_functions.sh">>~/.bashrc
	echo "export PATH=$PATH:./bin">>~/.bashrc
	cp -r ./bin  ~
	echo "export PATH=$PATH:~/bin">>~/.bashrc
	if [[ -e ~/src ]]
	then
		cp -r ./install.sh ~/src
		echo "export PATH=$PATH:~/src">>~/.bashrc
	else 
		mkdir ~/src
		cp -r ./install.sh ~/src
		echo "export PATH=$PATH:~/src">>~/.bashrc
	fi
	cp -r ./bin/updateFancyTools ~/bin
fi
