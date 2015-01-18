#!/bin/bash

# Prepare
PREV_PATH=$(pwd)
SCRIPT_PATH="$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)"
cd $SCRIPT_PATH/..

# Backup

## Brew
brew list > brew/libraries.txt
brew cask list > brew/applications.txt

# TODO: Auto-commit changes

# Cleanup
cd "$PREV_PATH"
