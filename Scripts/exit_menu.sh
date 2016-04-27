#!/bin/bash

# Logout script
# Stolen from /u/khoacao96

read -rnsl key

res=$(echo "Lock|Exit|Restart|Shutdown" | rofi -sep "|" -dmenu -i -p "Good Bye!" -separator-style solid -width 200 -hide-scrollbar -location 7 -padding 15 -line-margin 5 -eh 1)
 
if [ $res = "Lock" ] || [ $key = "l" ]; then
    /home/david/lock.sh
fi
if [ $res = "Exit" ] || [ $key = "e" ]; then
    i3-msg exit
fi
if [ $res = "Restart" ] || [ $key = "r" ]; then
    systemctl reboot
fi
if [ $res = "Shutdown" ] || [ $key = "s" ]; then
    systemctl poweroff
fi
exit 0
