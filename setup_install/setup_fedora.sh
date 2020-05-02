sudo dnf install libreoffice libreoffice-langpack-pt-BR gimp inkscape

sudo dnf install R R-curl R-XML R-openssl R-rvest R-xml2 zathura

sudo dnf install neovim git xdotool wmctrl

sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/

sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc

sudo dnf install brave-keyring brave-browser

sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm


sudo dnf install dropbox

sudo sysctl -w kernel.sysrq=1

sudo dnf install calibre papirus-icon-theme htop adapta-theme-gtk volume-icon blueberry xfce4-power-manager nitrogen

