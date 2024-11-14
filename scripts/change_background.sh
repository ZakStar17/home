#!/bin/bash

# finds a random image in ~/wallpapers and sets it as background
LOCCATION=$(find ~/wallpapers -type f | grep -v .git | shuf -n 1)
echo $LOCCATION > $HOME/cur_background_image
swww img $LOCCATION --transition-step 30 --transition-duration 0.8 --transition-fps 60 -t wipe
notify-send "changed to $LOCCATION" --icon=$LOCCATION

# command for swaybg
# swaymsg output HDMI-A-1 bg $LOCCATION fill '#000000'
