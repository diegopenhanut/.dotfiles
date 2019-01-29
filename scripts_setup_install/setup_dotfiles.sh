#!/usr/bin/env bash

today=$(date +"%Y-%m-%d-%h-%m-%s")
bak=~/.dotfiles.bak.$today


for i in $(find ../dotfiles/ -name ".*" -type f)
do
	echo $i
	base=$(basename $i)
	if [[ -f ~/$base ]]; then
		mkdir -p $bak
		echo "file exists"
		mv ~/$base $bak && cp $i ~
	else
		cp $i ~
	fi
done
	
