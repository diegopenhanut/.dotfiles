#!/usr/bin/bash

#https://www.digitalocean.com/community/tutorials/how-to-install-r-on-ubuntu-16-04-2

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9

sudo add-apt-repository 'deb [arch=amd64,i386] https://cran.rstudio.com/bin/linux/ubuntu xenial/'

sudo apt-get update
sudo apt-get install r-base pandoc libcurl4-openssl-dev libxml2-dev
# install packages
R -e "install.packages('tidyverse', repos='http://cran.rstudio.com/')"
R -e "install.packages(c('httr', 'rvest', 'xml2', 'devtools'), repos='http://cran.rstudio.com/')"
