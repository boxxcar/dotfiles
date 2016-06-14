#!/bin/sh

# Bar and Popup Script
# Create the popup and make it live for 3 seconds

# Popup Duration
duration=5

# Geometry
lemonbarX=10
lemonbarY=10
lemonbarW=120
lemonbarH=20

# Colors
bar_bg='#05104D'
bar_fg='#01FEFE'

# Compute Settings
bar='-g ${lemonbarW}x${lemonbarH}+${lemonbarX}+${lemonbarY} -B ${bar_bg} -F ${bar_fg}'

(echo " $@"; sleep ${duration}) | lemonbar -g 120x20+20+20
