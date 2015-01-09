#!/bin/bash

# Prepare
PREV_PATH=$(pwd)
SCRIPT_PATH="$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)"
cd $SCRIPT_PATH/..

# Backup

## Brew
brew list > brew/libraries.txt
brew cask list > brew/applications.txt

# Sublime Text settings
cat ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
# TODO: Auto-commit changes

# Cleanup
cd "$PREV_PATH"
