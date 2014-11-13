#!/bin/bash

configure_brew_cask () {
	# Install applications
	local dirty=0
	local curr_apps=$(brew cask list)

	while read app; do
		if [[ ! $curr_apps =~ $app ]]; then
			dirty=1
			echo_warning "Installing $app.."
			brew cask install $app
		fi
	done < brew/applications.txt

	if [ $dirty -eq 0 ]; then
		echo_success "No missing applications."
	fi
}
