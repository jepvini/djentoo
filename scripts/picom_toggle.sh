#!/usr/bin/env bash

if pgrep -x picom 
then
    pkill picom
else
    picom &> /dev/null &
fi
