#!/bin/env bash

# A pasta bin já deve estar criada, mas se não estiver...
mkdir ~/bin
cp screenshot_* ~/bin
cp lubuntu-rc.xml ~/.config/openbox/
mkdir ~/Área\ de\ Trabalho/screenshots/
openbox --reconfigure

