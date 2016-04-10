#!/bin/bash

# Logout script
# Stolen from /u/khoacao96
 
res=$(echo "Lock|Logout|Restart|Shutdown" | rofi -sep "|" -dmenu -i -p "Good Bye!" -separator-style solid -width 200 -hide-scrollbar -location 7 -padding 15 -line-margin 5 -eh 1)
 
if [ $res = "Lock" ]; then
    /home/david/lock.sh
fi
if [ $res = "Logout" ]; then
    i3-msg exit
fi
if [ $res = "Restart" ]; then
    systemctl reboot
fi
if [ $res = "Shutdown" ]; then
    systemctl poweroff
fi
exit 0
