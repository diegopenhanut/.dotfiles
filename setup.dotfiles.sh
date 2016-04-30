#!/usr/bin/env bash

today=$(date +"%Y-%m-%d")
bak=~/.dotfiles.bak.$today
mkdir -p $bak

for i in $(find ./ -name ".*" -type f)
do
	echo $i
	base=$(basename $i)
	if [[ -f ~/$base ]]; then
		echo "~/${base}"
		cp ~/$base $bak/ && cp $i ~
	else
		cp $i ~
	fi
done
	