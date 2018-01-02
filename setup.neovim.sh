#!/usr/bin/env bash

# use on *ubuntu only

# install nvim if not present
if [[ ! $(which nvim) ]]; then

	sudo add-apt-repository ppa:neovim-ppa/unstable
	sudo apt-get update
	sudo apt-get install neovim

fi

# install git if not present
if [[ ! $(which git) ]]; then
	
	sudo apt-get install git

fi

# install wmctrl if not present
# Required for better SyncTeX support under X Server.

if [[ ! $(which wmctrl) ]]; then
	
	sudo apt-get install wmctrl

fi

# install pathogen first
if [[ ! -f .vim/autoload/pathogen.vim ]]; then

	mkdir -p .vim/autoload .vim/bundle && 
	wget -O .vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

fi

# download plugins
for i in $(cat vim.plugins.txt)
do
	echo $i
	outdir=$(basename $(echo "$i" | cut -d"/" -f 5) .git)
	git clone $i .vim/bundle/$outdir
done

# copy spellcheck data to .vim
mkdir .vim/spell
cp pt.utf-8.spl .vim/spell

# add RMD snippet to snipmate
mkdir .vim/bundle/snippets_personalizados/snippets/
cp rmd.snippets .vim/bundle/snippets_personalizados/snippets/

# copy .vim to final destination, making a backup of old files
cp -nr ~/.vim ~/.vim_original
mv .vim ~/

# Create symlinks to use neovim
# This is important because if nvim fails, vim can be used as fall back
# https://neovim.io/doc/user/nvim_from_vim.html
mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}
ln -s ~/.vim $XDG_CONFIG_HOME/nvim
ln -s ~/.vimrc $XDG_CONFIG_HOME/nvim/init.vim


echo "done!"
