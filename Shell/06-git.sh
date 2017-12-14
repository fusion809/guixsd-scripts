function push {
    git add --all
    git commit -m "$1"
    git push origin $(git rev-parse --abbrev-ref HEAD)
}

function cps {
    sudo chmod +x -R {$HOME,/root}/Shell/
}

function shup {
    cps && cdgs && push "$1" && cd - && szsh
}
