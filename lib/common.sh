#!/bin/bash

_ln() {(
    if [ -L "$2" ];then
        info "ReLinking $2"
    fi
    info "Linking $1 -> $2 ..."
    ln -s "$1" "$2"
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
        -e '/^\s*$/d'\
        $1
)}