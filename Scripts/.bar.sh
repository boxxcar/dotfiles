#!/bin/sh

# Bar and Popup Script

background = "#05104D"
foreground  = "#01FEFE"
font = "Serif Sans 10"

~/.bardata.sh | lemonbar -p -d -f $font -B $background -F $foreground
