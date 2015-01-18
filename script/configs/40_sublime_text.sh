#!/bin/bash

configure_sublime_text () {
    # Sublime Text
    if [ -d "/Applications/Sublime Text.app/" ]; then
        rm -rf $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings 2> /dev/null
        replace_symlink subl/Packages/User/Preferences.sublime-settings $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
    fi
}
