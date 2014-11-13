#!/bin/bash

configure_git () {
	replace_symlink git/gitconfig.symlink "$HOME/.gitconfig"
}
