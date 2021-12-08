#!/bin/bash
bash -c "
    curl -o dotfiles-latest.tar.gz -L 'https://github.com/Kazanami/dotfiles/archive/main.tar.gz'
    tar xvfz dotfiles-latest.tar.gz
    if [ -d ${HOME}/dotfiles-main ];then
        mv ${HOME}/dotfiles-main ${HOME}/dotfiles
        echo 'extract complited'
    fi
    cd $(pwd)/dotfiles
    bash bin/link.sh
    cd ${HOME}
    rm dotfiles-latest.tar.gz
    rm launch.sh
    echo 'installed. Have fun!!'
"