#!/bin/env bash

# preciso para instalar import
sudo apt install imagemagick-6.q16
# A pasta bin já deve estar criada, mas se não estiver...
mkdir ~/bin
cp ../aux_scripts_and_files/screenshot_* ~/bin
cp ../configfiles/lubuntu-rc.xml ~/.config/openbox/
mkdir ~/Área\ de\ Trabalho/screenshots/
openbox --reconfigure

