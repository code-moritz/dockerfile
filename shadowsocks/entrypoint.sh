#!/bin/bash

SS_CONFIG=${SS_CONFIG:-""}
SS_MODULE=${SS_MODULE:-"ss-server"}

while getopts "s:m" OPT; do
    case $OPT in
        s)
            SS_CONFIG=$OPTARG;;
        m)
            SS_MODULE=$OPTARG;;
    esac
done

if [ "${SS_CONFIG}" != "" ]; then
    echo -e "\033[32mStarting shadowsocks......\033[0m"
    ${SS_MODULE} ${SS_CONFIG}
else
    echo -e "\033[31mError: SS_CONFIG is blank!\033[0m"
    exit 1
fi
