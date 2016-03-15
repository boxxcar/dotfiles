#!/bin/bash

# Credit goes to /u/wontonspecial (Github: savoca) and /u/fbt2lurker

icon="$HOME/Pictures/Wallpapers/Icons/Lock3.png"

# Check monitors and apply
if (xrandr -q | grep "HDMI2 connected" && xrandr -q | grep "DP1 connected")
then
	image="$HOME/Pictures/Wallpapers/MultiLock.png"
else
	image="$HOME/Pictures/Wallpapers/Lock.png"
fi

(( $# )) && { icon=$1; }

i3lock -u -i "$image"
