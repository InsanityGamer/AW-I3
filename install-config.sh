#!/bin/bash
#Author: InsanityGamer
#Purpose: Installs my config files and packages automatically from tty1
#Usage: ./install-config.sh
#Instruction: use git pull inside of your user home directory

#Enter the file containing this script
cd $HOME/AW-I3/ ;
#Copying .config folders into USER home folder
cp -R ./.config $HOME/ ;
cp -R ./.themes $HOME/ ;
cp -R ./.icons $HOME/ ;
#Pass a list into dnf package manager using Xargs as a handler
cat ./dnflist3 | xargs sudo dnf install ;
#Prompt for security lab group install
echo "Would you like to install the Fedora Security Suite? N/y"
read is_security_lab ;

if [ $is_security_lab == "Y" ] || [ $is_security_lab == "y" ]
	then sudo dnf groupinstall "Security Lab" -y
else

	echo "Ok you can always install them later using 'sudo dnf groupinstall 'Security Lab''!"
fi


#flathub repo added
flatpak remote-add --if-not-exists flathub \
       	https://dl.flathub.org/repo/flathub.flatpakrepo ;
#Setting user to gui target
sudo systemctl set-default graphical.target ;


