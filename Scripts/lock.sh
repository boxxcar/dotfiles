#!/bin/bash

image="$HOME/Pictures/Wallpapers/X Wing.png"

(( $# )) && { icon=$1; }

i3lock -u -i "$image"
