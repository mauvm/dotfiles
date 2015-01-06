set -x PATH $HOME/.bin /bin /sbin /usr/local/bin /usr/local/sbin /usr/bin $PATH
set -x PATH (brew --prefix coreutils)/libexec/gnubin $PATH
set -x PATH /Users/Malcolm/pear/bin $PATH

boot2docker shellinit | while read line; eval $line; end
