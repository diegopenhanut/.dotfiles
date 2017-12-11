#!/usr/bin/bash

gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys E084DAB9
gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys E084DAB9


sudo add-apt-repository 'deb [arch=amd64,i386] https://cloud.r-project.org/bin/linux/ubuntu xenial/'

sudo apt-get update
sudo apt-get install r-base pandoc libcurl4-openssl-dev libxml2-dev
# install packages
R -e "install.packages('tidyverse', repos='http://cran.rstudio.com/')"
R -e "install.packages(c('httr', 'rvest', 'xml2', 'devtools'), repos='http://cran.rstudio.com/')"
