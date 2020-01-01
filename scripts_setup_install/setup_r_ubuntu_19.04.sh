#!/usr/bin/bash

#gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys E084DAB9
#gpg -a --export E084DAB9 | sudo apt-key add -
#gpg --keyserver keyserver.ubuntu.com --recv-key E298A3A825C0D65DFD57CBB651716619E084DAB9
#gpg -a --export E298A3A825C0D65DFD57CBB651716619E084DAB9 | sudo apt-key add -
gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
gpg -a --export E298A3A825C0D65DFD57CBB651716619E084DAB9 | sudo apt-key add -

sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu disco-cran35/'

sudo apt-get update
sudo apt-get install r-base pandoc libcurl4-openssl-dev libxml2-dev gdebi libxml2-dev libssl-dev libcurl4-openssl-dev libopenblas-dev

# install packages
#R --vanilla << EOF
#install.packages(c('tidyverse', 'httr', 'rvest', 'xml2', 'devtools'), repos='http://cran.rstudio.com/')
#q()
#EOF
