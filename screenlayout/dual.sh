#!/bin/sh
xrandr --output HDMI-2 --mode 1600x900 --pos 0x0 --rotate normal --output HDMI-1 --off --output DP-1 --off --output eDP-1 --primary --mode 1366x768 --pos 0x900 --rotate normal --output DP-2 --off

feh --bg-fill $(head -n 7 .config/nitrogen/bg-saved.cfg | tail -n 1 | cut -c 6-) $(head -n 2 .config/nitrogen/bg-saved.cfg | tail -n 1 | cut -c 6-)

