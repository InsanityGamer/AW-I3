#!/bin/bash
#Author: InsanityGamer
#Purpose: Installs my config files and packages automatically from tty1
#Usage: ./install-config.sh
#Instruction: use git pull inside of your user home directory
cd ~/Insanitys-I3-Config-files/ ;
cp -R ./.config $USER/ ;
sudo dnf install Xorg lightdm slick-greeter i3 alacritty picom polybar rofi feh -y ;
sudo systemctl set-default graphical.target ;
reboot ;

