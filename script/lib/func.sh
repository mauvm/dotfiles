#!/bin/bash

# Bootstrap script output formatting
bs_ucwords() {
	# Source: http://www.unix.com/shell-programming-and-scripting/122000-convert-first-character-each-word-upper-case.html
	echo "$*" | awk '{for(i=0;++i<=NF;){OFS=(i==NF)?RS:FS;printf toupper(substr($i,0,1)) substr($i,2) OFS }}'
}

bs_echo_title () {
	echo -e "\033[1m==> $*\033[0m"
}

bs_echo_status () {
	echo -e "    \033[0m$*"
}

bs_echo_error () {
	echo -e "    \033[31m$*\033[0m"
}

bs_write_status () {
	while read line; do
		bs_echo_status "$line"
	done
}

bs_write_error () {
	while read line; do
		bs_echo_error "$line"
	done
}

# Output formatting
echo_success () {
	echo -e "\033[32m$*\033[0m"
}

echo_warning () {
	echo -e "\033[33m$*\033[0m"
}

echo_error () {
	echo "$*" 1>&2
}

# Symlinking
remove_symlink () {
	if [ -f $1 ] || [ -L $1 ]; then
		rm -f $1
        return $?
	fi
}

create_symlink () {
	local readlink="$(brew --prefix coreutils)/bin/greadlink"
	local src=$($readlink -f "$1")
	local dest=$($readlink -f "$2")
	[ -z "$src" ] && src="$1"
	[ -z "$dest" ] && dest="$2"
	if ln -s "$src" "$dest"; then
		echo "Symlinked $dest"
	else
		echo_error "Error symlinking $dest"
        return 1
	fi
}

replace_symlink () {
    if ! remove_symlink $2; then
        echo_error "Error removing symlink $2"
        return 1
    fi
	create_symlink $@
}
