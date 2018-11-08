# Help para keyboard
# F1-F3 estão funcionando, F4-F11 precisam de 
# change apple keyboard fn status
# sudo bash -c "echo 2 > /sys/module/hid_apple/parameters/fnmode"
# swap comd and alt
# sudo bash -c "echo 1 > /sys/module/hid_apple/parameters/swap_opt_cmd"
# turn home into esc
xmodmap -e "keycode 180 = Escape"
xmodmap -e "keycode 134 = backslash bar backslash bar masculine dead_breve masculine"
