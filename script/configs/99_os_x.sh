#!/bin/bash

configure_os_x() {
	# Set OS X defaults
	local lock_file=osx/defaults.lock
	if [ ! -f $lock_file ]; then
		touch $lock_file
		exec osx/set-defaults.sh
	else
		echo_warning "The defaults have already been set."
		echo_warning "Remove lockfile osx/defaults.lock and rerun to reset defaults."
	fi
}
