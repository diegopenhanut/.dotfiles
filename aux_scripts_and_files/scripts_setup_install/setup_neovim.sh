#!/usr/bin/env bash

# use on *ubuntu only

# install nvim if not present
if [[ ! $(which nvim) ]]; then

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

# Required to reload the page on the web browser

if [[ ! $(which xdotool) ]]; then
	
	sudo apt-get install xdotool

fi

# install vimplug first
if [[ ! -f .vim/autoload/plug.vim ]]; then

curl -fLo .vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

fi

# copy templates
mkdir .vim/templates/
cp template* .vim/templates/

# copy spellcheck data to .vim
mkdir .vim/spell
cp pt.utf-8.spl .vim/spell

# add RMD snippet to snipmate
mkdir .vim/bundle/snippets_personalizados/snippets/
cp rmd.snippets .vim/bundle/snippets_personalizados/snippets/

# add R snippet to snipmate
cp .vim/bundle/Nvim-R/R/r.snippets .vim/bundle/snippets_personalizados/snippets/

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
