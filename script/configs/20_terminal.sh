#!/bin/bash

configure_terminal () {
	defaults write com.googlecode.iterm2 PrefsCustomFolder "$DOTFILES_PATH"
	defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true
	echo "Done."
}
