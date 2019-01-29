#!/usr/bin/env bash

# Help para keyboard
# F1-F3 estão funcionando, F4-F11 precisam de 
# change apple keyboard fn status
# sudo bash -c "echo 2 > /sys/module/hid_apple/parameters/fnmode"
# swap cmd and alt
# sudo bash -c "echo 1 > /sys/module/hid_apple/parameters/swap_opt_cmd"
# turn home into esc
xmodmap -e "keycode 180 = Escape"
xmodmap -e "keycode 134 = slash question slash question degree questiondown degree questiondown slash question degree questiondown slash question degree questiondown"
xmodmap -e "keycode 26 = e E e E backslash EuroSign EuroSign EuroSign e E EuroSign EuroSign e E EuroSign EuroSign"
xmodmap -e "keycode 27 = r R r R bar registered registered registered r R registered registered r R registered registered"
# power off to delete
xmodmap -e "keycode 124 = Delete NoSymbol Delete NoSymbol Delete Delete"

