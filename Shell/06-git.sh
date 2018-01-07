if [[ -a $HOME/.ssh/environment ]]
then
    SSH_ENV=$HOME/.ssh/environment
elif [[ $USER == fusion809 ]] && ! [[ -f ~/.ssh/id_rsa.pub ]]
then
    ssh-keygen -t rsa -b 4096 -C "brentonhorne77@gmail.com"
    SSH_ENV=$HOME/.ssh/environment
    git config --global user.name "fusion809"
    git config --global user.email "brentonhorne77@gmail.com"
fi

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

function gitsw {
    # $1 is the username of the repo
    git remote rm origin
    git remote rm upstream
    CWD=${PWD##*/}
    GWD="${CWD#.}"
    if `printf $PWD | grep "AUR" > /dev/null 2>&1`; then
         git remote add origin ssh+git://aur@aur.archlinux.org/$GWD.git
    else
         if [[ -n "$1" ]]; then
  	      git remote add origin git@github.com:$1/$GWD.git
  	      git remote add upstream git@github.com:$1/$GWD.git
  	 else
  	      git remote add origin git@github.com:fusion809/$GWD.git
  	      git remote add upstream git@github.com:fusion809/$GWD.git
         fi
    fi
}
