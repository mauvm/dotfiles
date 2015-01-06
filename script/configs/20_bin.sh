#!/bin/bash

configure_bin () {
	# Sublime Text
	if [ -d "/Applications/Sublime Text.app/" ]; then
		rm bin/subl 2> /dev/null
		create_symlink "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" bin/subl
	fi
}
