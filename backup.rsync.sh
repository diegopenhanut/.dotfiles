#!/usr/bin/bash

wget https://raw.githubusercontent.com/rubo77/rsync-homedir-excludes/master/rsync-homedir-excludes.txt -O /var/tmp/ignorelist

rsync -aP --exclude-from=/var/tmp/ignorelist /home/diego/ /media/diego/hd-diego/dell
