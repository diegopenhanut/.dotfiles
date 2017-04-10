#!/usr/bin/bash

apt-key adv --keyserver keys.gnupg.net --recv-key 6212B7B7931C4BB16280BA1306F90DE5381BA480
sudo echo "deb http://vps.fmvz.usp.br/CRAN/bin/linux/debian  jessie-cran3/" > /etc/apt/sources.list

sudo apt-get update
sudo apt-get install r-base r-base-dev
sudo apt-get install pandoc

# install packages
R -e "install.packages('tidyverse', repos='http://cran.rstudio.com/')"
R -e "install.packages('devtools', repos='http://cran.rstudio.com/')"
