# finds a random image in ~/wallpapers and sets it as background
swaymsg output eDP-1 bg $(find ~/wallpapers -type f | grep -v .git | shuf -n 1) fill #111111
