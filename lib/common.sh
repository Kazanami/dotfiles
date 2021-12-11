#!/bin/bash

_ln() {(
    debug "Link Path: ${2}"
    debug "Checking Linked..."
    if [ -L "$2" ];then
        debug "Link status: true"
        debug "Link Path: $2"
        info "ReLinking $2"
        unlink "$2"
    fi
    info "Linking $1 -> $2 ..."
    ln -fs "$1" "$2"
)}

_unlink() {(
    info "Unlinking $1..."
    unlink "$1"
)}

_mkdir() {(
    if [ ! -e "$1" ];then
        info "Creating $1..."
        mkdir -p "$1"
    fi
)}

_remove_linklist_comment() {(
    sed -e 's/\s*#.*//' \
        -e '/^\s*$/d' \
        $1
)}
