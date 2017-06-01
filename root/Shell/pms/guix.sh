function gpi {
    guix package -i -c 3 "$@"
}

function gpr {
    guix package -r "$@"
}

function gps {
    guix package -s "$@"
}

function update {
    guix pull && guix package -u -c 3
}
