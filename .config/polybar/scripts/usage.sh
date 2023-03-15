#!/bin/bash

RHYMEBAR_USAGE_MODE=`cat ~/.dotfiles/.config/polybar/scripts/usageMode`
if [ "$RHYMEBAR_USAGE_MODE" == "C" ]
then
    echo "%{T3}󰍛 %{T-}%{T2}`top -bn1 | grep 'Cpu(s)' | sed 's/.*, *\([0-9.]*\)%* id.*/\1/' | awk '{print int(100 - $1)}'`%{T-} "
else
    echo "%{T3}󰘚 %{T-}%{T2}`free | grep Mem | awk '{print int($3/$2 * 100.0)}'`%{T-} "
fi