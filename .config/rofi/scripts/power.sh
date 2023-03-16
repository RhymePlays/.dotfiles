pickedValue=`printf "󰤄 Sleep\n󰐥 Shutdown\n󰜉 Restart\n󰍃 Log Out\n󰜺 No U" | rofi -dmenu`
echo $pickedValue

case $pickedValue in
    "󰤄 Sleep")
        systemctl suspend
    ;;

    "󰐥 Shutdown")
        systemctl poweroff
    ;;

    "󰜉 Restart")
        systemctl reboot
    ;;

    "󰍃 Log Out")
        bspc quit
    ;;
esac