#!/usr/bin/env bash

#https://websiteforstudents.com/how-to-install-oracle-java-jdk-13-on-ubuntu-18-04-16-04/
# Download deb from site, version 14
# 

# wget --no-check-certificate -c --header  "Cookie: oraclelicense=accept-securebackup-cookie" "https://download.oracle.com/otn-pub/java/jdk/14+36/076bab302c7b4508975440c56f6cc26a/jdk-14_linux-x64_bin.deb"


sudo dpkg -i  ~/Downloads/jdk-14_linux-x64_bin.deb

sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-14/bin/java 2

sudo update-alternatives --config java

sudo update-alternatives --install /usr/bin/jar jar /usr/lib/jvm/jdk-14/bin/jar 2
sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/jdk-14/bin/javac 2
sudo update-alternatives --set jar /usr/lib/jvm/jdk-14/bin/jar
sudo update-alternatives --set javac /usr/lib/jvm/jdk-14/bin/javac
