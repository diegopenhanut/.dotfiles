sudo gpasswd -a $USER input

sudo apt-get install xdotool wmctrl libinput-tools

git clone https://github.com/bulletmark/libinput-gestures.git
cd libinput-gestures
sudo make install && echo "please, reeboot and run libinput-gestures-setup autostart"
