#!/bin/bash

icon="$HOME/Pictures/Wallpapers/Icons/Lock3.png"

# Check monitors and apply
if (xrandr -q | grep -q "HDMI2 connected" && xrandr -q | grep -q "DP1 connected")
then
	image="$HOME/Pictures/Wallpapers/MultiLock.png"
else
	image="$HOME/Pictures/Wallpapers/Lock.png"
fi

(( $# )) && { icon=$1; }

i3lock -u -i "$image"
