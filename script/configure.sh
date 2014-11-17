#!/bin/bash

# Prepare
PREV_PATH=$(pwd)
SCRIPT_PATH="$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)"
DOTFILES_PATH="$SCRIPT_PATH/.."

source "$SCRIPT_PATH/lib/func.sh"

# Installations
for file in $SCRIPT_PATH/configs/*.sh; do
	[ ! -f $file ] && continue

	# Load script functions
	cd "$DOTFILES_PATH"
	source "$file"

	# Get filename and remove sorting prefix and .sh extension
	name=$(basename "$file" | sed "s/^[0-9]*_//" | sed s/\.sh\$//)

	# Remove invalid characters and apply ucwords
	pretty_name=$(bs_ucwords $(echo $name | sed "s/[^a-zA-Z0-9\-]/ /g"))

	# Call install function and format STDOUT and STDERR
	bs_echo_title "Configuring $pretty_name.."
	{ "configure_$name" 2>&3 | bs_write_status; } 3>&1 1>&2 | bs_write_error
done

# Cleanup
cd "$PREV_PATH"
