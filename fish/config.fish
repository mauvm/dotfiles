# Disabled greeting
set fish_greeting ""

# Load environment variables
if test -f ~/.config/fish/environment.fish
	source ~/.config/fish/environment.fish
end

# Variables
set PATH $DOTFILES_PATH/bin $PATH
set PATH (brew --prefix coreutils)/libexec/gnubin $PATH
set PATH $PATH (brew --prefix josegonzalez/php/php55)/bin
set PATH $PATH $HOME/.rvm/bin # Add RVM to PATH for scripting
set PATH $PATH ./node_modules/.bin
set PATH $PATH $HOME/Developers/android-sdk-macosx/platform-tools $HOME/Developers/android-sdk-macosx/tools

set PATH $PATH /usr/local/go/bin
set -x GOPATH $HOME/Developers/GoPath
set PATH $PATH $GOPATH/bin

set -x IVY_HOME /usr/local/Cellar/ivy/2.3.0/libexec

set -x EDITOR "vim"

# Init boot2docker
boot2docker shellinit | while read line; eval $line; end

