#!/bin/bash

# dotfiles root dir
dotfiles_root=$(cd $(dirname $0)/.. && pwd)
LINK_LISTS="${dotfiles_root}/list"

# Linrary load
LIB_BASE="${dotfiles_root}/lib"
source ${LIB_BASE}/logger.sh
source ${LIB_BASE}/common.sh

# Main
for linklist in "${LINK_LISTS}/linklist.Unix.txt" "${LINK_LISTS}/linklist.$(uname).txt"; do
    if [ ! -r "${linklist}" ];then
        continue
    fi

    _remove_linklist_comment "$linklist" | while read target link; do
        link=$(eval echo "${link}")
        _unlink ${link}
    done
done