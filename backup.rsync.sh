#!/usr/bin/env bash

wget https://raw.githubusercontent.com/rubo77/rsync-homedir-excludes/master/rsync-homedir-excludes.txt -O /var/tmp/ignorelist

rsync -avzxhP --delete --stats --exclude-from=/var/tmp/ignorelist /home/diego/ /media/usb0/ideapad320_backup
#rsync -avzxhP --delete --stats --exclude-from=/var/tmp/ignorelist /home/diego/ /media/diego/hd-diego/ideapad320_backup
