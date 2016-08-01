emulate sh -c 'source /etc/profile'
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
