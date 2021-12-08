#!/bin/bash

dotfiles_root=$(cd $(dirname $0)/.. && pwd)
LINK_LISTS="${dotfiles_root}/list"

LIB_BASE="${dotfiles_root}/lib"
source ${LIB_BASE}/logger.sh
source ${LIB_BASE}/common.sh

NOW_LINKING=$(find ${HOME} -type l)
err_buf=""
for linklist in "${LINK_LISTS}/linklist.Unix.txt" "${LINK_LISTS}/linklist.$(uname).txt"; do
    [ ! -r "${linklist}" ] && continue

    _remove_linklist_comment "$linklist" | while read target link; do
        link=$(eval echo "${link}")
        if [ $(echo "${NOW_LINKING}" | grep "${link}") ];then
            info "${link} -> ${dotfiles_root}/${target}: OK"
            continue
        else
            error "${link} -> ${dotfiles_root}/${target}: NG"
            exit 1
        fi
    done
    if [ $? != 0 ];then
        error "Error Corrected"
    fi
done
