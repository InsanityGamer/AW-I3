#!/bin/bash
#Author: Sean M
#Purpose: Installs config files and packages automatically from tty1 (start from most recent Fedora Server OS)
#Usage: ./install-config.sh
#Instruction: Ensure the script is placed in user home directoy.

#Enter the file containing this script
cd $HOME/AW-I3/ ;
# add flatpak and rpmfusion
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y;
#flathub repo added
flatpak remote-add --if-not-exists flathub \
       	https://dl.flathub.org/repo/flathub.flatpakrepo ;
#Pass a list into dnf package manager using Xargs as a handler
cat ./dnflist3 | xargs sudo dnf install ;
#install obsidian
flatpak install md.obsidian.Obsidian -y ;
#Setting user to gui target
sudo systemctl set-default graphical.target ;
#Copying configs into USER home folder
cp -R ./.config $HOME/ ;
cp ./.bashrc $HOME/ ;
sudo cp ./config.toml /etc/greetd/config.toml
sudo cp ./xinitrc /etc/X11/xinit/xinitrc 
sudo systemctl enable greetd --now;
