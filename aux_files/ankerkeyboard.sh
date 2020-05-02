#!/usr/bin/env bash

# Anker bluetooth keyboard
# F1-F3 estão funcionando, F4-F11 precisam de 

# change apple keyboard fn status
sudo bash -c "echo 2 > /sys/module/hid_apple/parameters/fnmode"

# swap cmd and alt
sudo bash -c "echo 1 > /sys/module/hid_apple/parameters/swap_opt_cmd"


# power off to delete
xmodmap -e "keycode 124 = Delete NoSymbol Delete NoSymbol Delete Delete"

# turn home into esc 
xmodmap -e "keycode 180 = Escape"
