function vsh {
    pushd $HOME/Shell/$1
    vim
    popd
}

function vrm {
    vim README.md
}
