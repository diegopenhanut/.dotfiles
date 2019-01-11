#!/bin/bash
DATE=`date +%Y-%m-%d\ %H:%M:%S`
out="$(xdg-user-dir DESKTOP)/screenshots/$DATE.png"
import "$out" && echo "$out saved to disk"
xclip -selection clipboard -t image/png -i "$out" && echo "$out copied to clipboard"

