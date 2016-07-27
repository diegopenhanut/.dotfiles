#!/usr/bin/env bash
# add ppa
sudo add-apt-repository ppa:linrunner/tlp
sudo apt-get update 
# install
sudo apt-get install tlp tlp-rdw 
# thinkpad specifc
sudo apt-get install tp-smapi-dkms acpi-call-dkms
