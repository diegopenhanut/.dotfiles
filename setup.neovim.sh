#!/usr/bin/env bash

if [[ ! -f .vim/autoload/pathogen.vim ]]; then

mkdir -p .vim/autoload .vim/bundle && 
wget -O .vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

fi


for i in $(cat vim.plugins.txt)
do
	echo $i
	outdir=$(basename $(echo "$i" | cut -d"/" -f 5) .git)
	git clone $i .vim/bundle/$outdir
done

mv .vim ~
# Create symlinks to use neovim
# This is important because if nvim fails, vim can be used as fall back
# https://neovim.io/doc/user/nvim_from_vim.html
mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}
ln -s ~/.vim $XDG_CONFIG_HOME/nvim
ln -s ~/.vimrc $XDG_CONFIG_HOME/nvim/init.vim
