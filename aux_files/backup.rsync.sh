#!/usr/bin/env bash

wget https://raw.githubusercontent.com/rubo77/rsync-homedir-excludes/master/rsync-homedir-excludes.txt -O /var/tmp/ignorelist

rsync -avzxhP --delete --stats --exclude-from=/var/tmp/ignorelist /home/diego/ /media/diego/hd-diego/positivo
#rsync -avzxhP --delete --stats --exclude-from=/var/tmp/ignorelist /home/diego/ /media/diego/hd-diego/ideapad320_backup

# https://unix.stackexchange.com/questions/389437/home-directory-file-permissions-screwed-up-how-do-i-start-over

sudo chown -R diego:diego /home/diego
find /home/diego -type f -print0 | xargs -0 chmod 664
find /home/diego -type d -print0 | xargs -0 chmod 775

#find /home/diego/Mail -type d -print0 | xargs -0 chmod 700
find /home/diego/.ssh -type d -print0 | xargs -0 chmod 700
#find /home/diego/Mail -type f -print0 | xargs -0 chmod 600
find /home/diego/.ssh -type f -print0 | xargs -0 chmod 600
