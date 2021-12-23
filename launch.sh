#!/bin/bash
bash -c "
  if `type curl`;then
    curl -o dotfiles-latest.tar.gz -L 'https://github.com/Kazanami/dotfiles/archive/main.tar.gz'
  elif `type wget`;then
    wget -O dotfiles-latest.tar.gz --no-check-certificate https://github.com/Kazanami/dotfiles/archive/main.tar.gz
  fi
    tar xvfz dotfiles-latest.tar.gz
    if [ -d ${HOME}/dotfiles-main ];then
        mv ${HOME}/dotfiles-main ${HOME}/dotfiles
        echo 'extract complited'
    fi
    cd $(pwd)/dotfiles
    bash bin/link.sh
    cd ${HOME}
    rm $(pwd)/dotfiles-latest.tar.gz
    rm $(pwd)/launch.sh
    echo 'installed. Have fun!!'
"
