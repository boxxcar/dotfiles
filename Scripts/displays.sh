#!/bin/bash

# Check to see if HDMI2 and DP1 are connected
if (xrandr -q | grep "HDMI2 connected" && xrandr -q | grep "DP1 connected")
then
	exec xrandr --output HDMI2 --mode 1920x1080 --pos 0x0 --rotate normal --output DP1 --mode 1360x768 --pos 1920x312 --rotate normal --output eDP1 --mode 1366x768 --pos 3280x312 --rotate normal
	exec feh --bg-scale ~/Pictures/Wallpapers/Ren.png --bg-scale ~/Pictures/Wallpapers/Fin.png --bg-scale ~/Pictures/Wallpapers/TR8R.png

elif (xrandr -q | grep "HDMI2 connected" && xrandr -q | grep "DP1 disconnected")
then
	exec xrandr --output DP1 --off --output HDMI2 --mode 1920x1080 --pos 0x0 --rotate normal --output eDP1 --mode 1366x768 --pos 1920x312 --rotate normal
	exec feh --bg-scale ~/Pictures/Wallpapers/Ren.png --bg-scale ~/Pictures/Wallpapers/Fin.png --bg-scale ~/Pictures/Wallpapers/TR8R.png

elif (xrandr -q | grep "HDMI2 disconnected" && xrandr -q | grep "DP1 connected")
then
	exec xrandr --output HDMI2 --off --output DP1 --mode 1360x768 --pos 1920x312 --rotate normal --output eDP1 --mode 1366x768 --pos 3280x312 --rotate normal
	exec feh --bg-scale ~/Pictures/Wallpapers/Ren.png --bg-scale ~/Pictures/Wallpapers/Fin.png --bg-scale ~/Pictures/Wallpapers/TR8R.png

else
	exit
fi

