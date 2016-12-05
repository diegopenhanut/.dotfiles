#!/usr/bin/env bash

# add key
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

# download and install RVM
curl -sSL https://get.rvm.io | bash -s stable --ruby=jruby --gems=rails

# install jekkyl
gem install jekyll

# install githut theme gem for jekkyll/github pages
gem update github-pages

# install highlighter 
# test to see if this is reaaly needed
#gem install rouge


