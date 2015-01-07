function update
    sudo -v

    echo 'Clearing trash.'
    emptytrash

    echo 'Updating brew.'
    brew update

    echo 'Upgrading brew packages.'
    brew upgrade

    echo 'Running brew cleanup.'
    brew cleanup

    echo 'Updating fish completions.'
    fish_update_completions

    echo 'Updating dotfiles.'
    pushd
    dotfiles
    gac "Update settings"
    gsync
    popd

    echo 'Update done.'
end
