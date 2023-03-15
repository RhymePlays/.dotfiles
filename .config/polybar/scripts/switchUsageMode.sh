#!/bin/bash

RHYMEBAR_USAGE_MODE=`cat ~/.dotfiles/.config/polybar/scripts/usageMode`

if [ "$RHYMEBAR_USAGE_MODE" == "C" ]
then
    echo "M" > ~/.dotfiles/.config/polybar/scripts/usageMode
else
    echo "C" > ~/.dotfiles/.config/polybar/scripts/usageMode
fi