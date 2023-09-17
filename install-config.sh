#!/bin/bash
#Author: InsanityGamer
#Purpose: Installs my config files and packages automatically from tty1
#Usage: ./install-config.sh
#Instruction: use git pull inside of your user home directory

#Enter the file containing this script
cd $HOME/Insanitys-I3-Config-files/ ;
#Copying .config folder into USER home folder
cp -R ./.config $HOME/ ;
#Pass a list into dnf package manager using Xargs as a handler
cat ./dnflist3 | xargs sudo dnf install ;
#Setting user to gui target
sudo systemctl set-default graphical.target ;
#create temporary files in /tmp/.xrandroutput /tmp/xrandroutput2 for polybar configuration
sudo xrandr | grep  " connected" > /tmp/.xrandroutput ; cat /tmp/.xrandroutput | cut -d " " -f 1 /tmp/.xrandroutput > /tmp/.xrandroutput2

#let the dust settle
sleep 10 ;
reboot ;

