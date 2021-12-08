#!/bin/bash

# dotfiles root dir
dotfiles_root=$(cd $(dirname $0)/.. && pwd)
LINK_LISTS="${dotfiles_root}/list"
dot_ascii='
    _     _    __ _ _        
 __| |___| |_ / _(_) |___ ___
/ _` / _ \  _|  _| | / -_|_-<
\__,_\___/\__|_| |_|_\___/__/
                             '

# Linrary load
LIB_BASE="${dotfiles_root}/lib"
source ${LIB_BASE}/logger.sh
source ${LIB_BASE}/common.sh

echo "${dot_ascii}"
echo "Welcome to Kazanami's dotfiles installer"

# Main
for linklist in "${LINK_LISTS}/linklist.Unix.txt" "${LINK_LISTS}/linklist.$(uname).txt"; do
    [ ! -r "${linklist}" ] && continue
    _remove_linklist_comment "$linklist" | while read target link; do
 #       echo "${target} ${link}"
        target=$(eval echo "${dotfiles_root}/${target}")
        link=$(eval echo "${link}")
        _mkdir $(dirname ${link})
        _ln ${target} ${link}
    done
done

info "Please reload .bashrc"
info "$ source ~/.bashrc"