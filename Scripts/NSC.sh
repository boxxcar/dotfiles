#!/bin/sh
xrandr --output HDMI2 --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI1 --off --output DP1 --mode 1360x768 --pos 1920x312 --rotate normal --output eDP1 --mode 1366x768 --pos 3280x312 --rotate normal --output VIRTUAL1 --off

feh --bg-scale ~/.i3/Wallpaper.png
