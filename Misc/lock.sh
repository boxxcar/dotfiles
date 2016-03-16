#!/bin/bash

icon="$HOME/Pictures/Wallpapers/Icons/Lock3.png"
image="$HOME/Pictures/Wallpapers/Lock.png"

(( $# )) && { icon=$1; }

i3lock -u -i "$image"
