function cdsh {
    cd $HOME/Shell
}

function cdg {
    cd $HOME/GitHub/$1
}

function cdgm {
    cdg "mine/$1"
}

function cdcf {
    cdgm "config/$1"
}

function cdgc {
    cdcf "GuixSD-configs/$1"
}

function cded {
    cdgm "editors/$1"
}

function cdvm {
    cded "vim/$1"
}

function cdsc {
    cdgm "scripts/$1"
}

function cdgs {
    cdsc "guixsd-scripts/$1"
}
