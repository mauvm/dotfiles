#!/bin/bash

configure_brew () {
	# Install Homebrew
	if ! which brew > /dev/null; then
		ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	fi

	# Install libraries
	local dirty=0
	local curr_libs=$(brew list)

	while read lib; do
		if [[ ! $curr_libs =~ $lib ]]; then
			dirty=1
			echo_warning "Installing $lib.."
			brew install $lib
		fi
	done < brew/libraries.txt

	if [ $dirty -eq 0 ]; then
		echo_success "No missing libraries."
	fi
}
