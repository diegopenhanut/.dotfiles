git clone https://github.com/free5lot/hid-apple-patched.git


if [[ ! $(which dkms) ]]; then
	sudo apt install dkms
fi

cd hid-apple-patched/

sudo dkms add .
sudo dkms build hid-apple/1.0
sudo dkms install hid-apple/1.0

# Then, create file /etc/modprobe.d/hid_apple.conf. The following configuration emulates a standard PC layout:
#options hid_apple fnmode=2
#options hid_apple swap_fn_leftctrl=1
#options hid_apple swap_opt_cmd=1
#options hid_apple rightalt_as_rightctrl=1
#options hid_apple ejectcd_as_delete=1

cd -

rm -r hid-apple-patched/

sudo update-initramfs -u
