#!/bin/bash

configure_vim () {
    replace_symlink vim/vimrc.symlink "$HOME/.vimrc"
    replace_symlink vim/vim.symlink/ "$HOME/.vim" # No trailing slash
}

