#!/bin/bash

xrandr --auto
xrdb -merge /home/cthulhu/.Xresources
xbindkeys
xinput set-prop 'bcm5974' 'libinput Natural Scrolling Enabled' 1
xinput set-prop 'bcm5974' 'libinput Natural Scrolling Enabled Default' 1
xinput set-prop 'bcm5974' 'libinput Tapping Enabled' 1
xinput set-prop 'bcm5974' 'libinput Tapping Enabled Default' 1
xinput set-prop 'bcm5974' 'libinput Click Method Enabled' 1 0
xinput set-prop 'bcm5974' 'libinput Click Method Enabled Default' 1 0
urxvtd -q -o -f 
exec qtile
