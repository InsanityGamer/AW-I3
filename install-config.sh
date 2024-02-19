#!/bin/bash
#Author: InsanityGamer
#Purpose: Installs my config files and packages automatically from tty1
#Usage: ./install-config.sh
#Instruction: use git pull inside of your user home directory

#Enter the file containing this script
cd $HOME/AW-I3/ ;
#Copying configs into USER home folder
cp -R ./.config $HOME/ ;
cp ./.bashrc $HOME/ ;
#Pass a list into dnf package manager using Xargs as a handler
cat ./dnflist3 | xargs sudo dnf install ;
#flathub repo added
flatpak remote-add --if-not-exists flathub \
       	https://dl.flathub.org/repo/flathub.flatpakrepo ;
#install obsidian
flatpak install md.obsidian.Obsidian -y ;
#Setting user to gui target
sudo systemctl set-default graphical.target ;
