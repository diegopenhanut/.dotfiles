#!/usr/bin/env bash

# download from site
# untar
# adapt to newer version. 
# This scrips was written for 2.0_241
# https://www.javahelps.com/2015/03/install-oracle-jdk-in-ubuntu.html

sudo mkdir /usr/lib/jvm
cd /usr/lib/jvm
# renamed after downlad
sudo tar -xvzf ~/Downloads/oracle-java.gz

sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk1.8.0_241/bin/java" 0

sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk1.8.0_241/bin/javac" 0

sudo update-alternatives --set java /usr/lib/jvm/jdk1.8.0_241/bin/java

sudo update-alternatives --set javac /usr/lib/jvm/jdk1.8.0_241/bin/javac


