#!/bin/bash

end="\033[0m"
black="\033[0;30m"
blackb="\033[1;30m"
white="\033[0;37m"
whiteb="\033[1;37m"
red="\033[0;31m"
redb="\033[1;31m"
green="\033[0;32m"
greenb="\033[1;32m"
yellow="\033[0;33m"
yellowb="\033[1;33m"
blue="\033[0;34m"
blueb="\033[1;34m"
purple="\033[0;35m"
purpleb="\033[1;35m"
lightblue="\033[0;36m"
lightblueb="\033[1;36m"

now_date(){
    date "+%F %R"
}

base() {
    echo "[$(now_date)]"
}

info() {
    echo -e "$(base) [${green}INFO${end}] $1"
}

warn() {
    echo -e "$(base) [${orange}WARN${end}] $1"
}

error() {
    echo -e "$(base) [${red}ERROR${end}] $1"
}

debug(){
    if [ -z "$DOT_DEBUG" ];then
        return 1
    fi
    echo -e "$(base) [${lightblue}DEBUG${end}] $1"
}