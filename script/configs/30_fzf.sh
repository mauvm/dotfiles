#!/bin/bash

configure_fzf () {
	# Configure FZF
	replace_symlink fzf $HOME/.fzf
    echo_warning "Press enter twice."
    ./fzf/install
}
