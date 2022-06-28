#!/bin/bash
echo "Forced remove Firefox Snap package and install from .deb unofficial repository"
echo "Do you want to continue? (y/n)"
read answer
if [ $answer == "y" ]; then
	echo "Stopping apparmor..."
	sudo systemctl stop apparmor
	echo "Removing snap package..."
	sudo snap remove --purge firefox
	echo "Removing snap from apt..."
	sudo apt remove --purge firefox
	echo "Adding mozilla team ppa..."
	sudo add-apt-repository ppa:mozillateam/ppa
	echo "Installing firefox from mozilla team ppa..."
	sudo apt install -t 'o=LP-PPA-mozillateam' firefox
	echo "Setting ppa priority over snap package..."

	if [ ! -d "/etc/apt/preferences.d/" ]; then
		echo "Directory /etc/apt/preferences.d does not exist. Creating..."
		sudo mkdir /etc/apt/preferences.d
	fi

	echo "Creating mozillateamppa in preferences.d"
	sudo echo "Package: firefox*" > /etc/apt/preferences.d/mozillateamppa
	sudo echo "Pin: release o=LP-PPA-mozillateam" >> /etc/apt/preferences.d/mozillateamppa
	sudo echo "Pin-Priority: 501" >> /etc/apt/preferences.d/mozillateamppa

	echo "Updating repositories..."
	sudo apt update
else
	echo "Exiting"
fi

