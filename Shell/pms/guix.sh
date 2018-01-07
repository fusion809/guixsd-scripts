function gpi {
    sudo guix package -i "$@"
}

function gpr {
    sudo guix package -r "$@"
}

function gps {
    guix package -s "$@"
}

function update {
    sudo guix pull && sudo guix package -u
}

alias guixup=update

function reconf {
    sudo guix system reconfigure /etc/config.scm --cores=3 --max-jobs=10
}
