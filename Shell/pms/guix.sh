function gpi {
    sudo guix package -i -c 3 "$@"
}

function gpr {
    sudo guix package -r "$@"
}

function gps {
    guix package -s "$@"
}

function update {
    sudo guix pull && sudo guix package -u -c 3
}
