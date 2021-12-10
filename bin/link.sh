#!/bin/bash

# dotfiles root dir
dotfiles_root=$(cd $(dirname $0)/.. && pwd)
LINK_LISTS="${dotfiles_root}/list"
dot_ascii='
    _     _    __ _ _        
 __| |___| |_ / _(_) |___ ___
/ _` / _ \  _|  _| | / -_|_-<
\__,_\___/\__|_| |_|_\___/__/
                             
                             installer!'

# Linrary load
LIB_BASE="${dotfiles_root}/lib"
source ${LIB_BASE}/logger.sh
debug "DOT_DEBUG is True"
debug "Loading Library..."
for lib_data in `ls -1 ${LIB_BASE}/*.sh`; do
    [[ "$ilb_data" != "${LIB_BASE}/logger.sh" ]] && source ${lib_data}; debug "Loaded Library: ${lib_data}"
done

debug "Getting OS Infomation..."
debug "OS Version: ${NAME} ${VERSION}"
debug "Kernel Version: $(uname -rv)"
debug "bash Version: ${BASH_VERSION}"
debug "End OS Infomation"

echo "Welcome to Kazanami's"
echo "${dot_ascii}"
#echo "Welcome to Kazanami's dotfiles installer"

# Main
for linklist in "${LINK_LISTS}/linklist.Unix.txt" "${LINK_LISTS}/linklist.$(uname).txt"; do
    debug "Loading Link list: ${linklist}"
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