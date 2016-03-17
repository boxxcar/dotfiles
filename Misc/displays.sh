#!/bin/bash

if (xrandr -q | grep -q "HDMI2 connected" && xrandr -q | grep -q "DP1 connected")
then
	exec xrandr --output HDMI2 --mode 1920x1080 --pos 0x0 --rotate normal --output DP1 --mode 1360x768 --pos 1920x312 --rotate normal --output eDP1 --mode 1366x768 --pos 3280x312 --rotate normal

elif (xrandr -q | grep -q "HDMI2 connected" && xrandr -q | grep -q "DP1 disconnected")
then
	exec xrandr --output DP1 --off --output HDMI2 --mode 1920x1080 --pos 0x0 --rotate normal --output eDP1 --mode 1366x768 --pos 1920x312 --rotate normal

elif (xrandr -q | grep -q "HDMI2 disconnected" && xrandr -q | grep -q "DP1 connected")
then
	exec xrandr --output HDMI2 --off --output DP1 --mode 1360x768 --pos 0x0 --rotate normal --output eDP1 --mode 1366x768 --pos 1360x0 --rotate normal

elif (xrandr -q | grep -q "HDMI2 disconnected" && xrandr -q | grep -q "DP1 disconnected" && xrandr -q | grep -q "eDP1 connected")
then
	exec xrandr --output HDMI2 --off --output HDMI1 --off --output DP1 --off --output eDP1 --mode 1366x768 --pos 0x0 --rotate normal --output VIRTUAL1 --off

else
	exit
fi

