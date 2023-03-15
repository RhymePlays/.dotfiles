#!/bin/bash

STALONETRAY_MODE=`cat ~/.dotfiles/.config/polybar/scripts/stalonetrayMode`

if [ "$STALONETRAY_MODE" == "F" ]
then
    echo "T" > ~/.dotfiles/.config/polybar/scripts/stalonetrayMode
    stalonetray --config ~/.config/stalonetray/.stalonetrayrc &
else
    echo "F" > ~/.dotfiles/.config/polybar/scripts/stalonetrayMode
    pkill "stalonetray"
fi