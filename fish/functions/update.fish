function update
    sudo -v

    echo 'Clearing trash.'
        emptytrash
    echo 'Trash cleared.'

    sudo -v

    echo 'Update locate database.'
        /usr/libexec/locate.updatedb
    echo 'Locate database updated.'

    echo 'Updating brew.'
        brew update
    echo 'Brew updated.'

    echo 'Upgrading brew packages.'
        brew upgrade
    echo 'Brew packages upgraded.'

    echo 'Running brew cleanup.'
        brew cleanup
    echo 'Brew cleaned up.'

    echo 'Updating fish completions.'
        fish_update_completions
    echo 'Fish completions updated.'

    echo 'Updating dotfiles.'
        pushd
        dotfiles
        gac "Update settings"
        gsync
        popd
    echo 'Dotfiles updated.'

    echo 'Updating composer.'
        which composer; and composer self-update
    echo 'Composer updated.'


    echo 'Update done.'
end
