
sudo apt-get install python python-gtk2 python-xlib python-dbus python-wnck python-setuptools

git clone https://github.com/ssokolow/quicktile.git

cd quicktile

./install.sh && rm -rf quicktile

cp ../configfiles/quicktile.cfg ~/.config/
