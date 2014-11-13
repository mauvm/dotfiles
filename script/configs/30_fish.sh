#!/bin/bash

configure_fish () {
	# Configure Fishshell
	mkdir $HOME/.config 2> /dev/null
	rm -rf $HOME/.config/fish 2> /dev/null
	replace_symlink fish $HOME/.config/fish
}
