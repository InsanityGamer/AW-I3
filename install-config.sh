#!/bin/bash
#Author: InsanityGamer
#Purpose: Installs my config files and packages automatically from tty1
#Usage: ./install-config.sh
#Instruction: use git pull inside of your user home directory
cd $HOME/Insanitys-I3-Config-files/ ;
cp -R ./.config $HOME/ ;
cat ./dnflist3 | xargs sudo dnf install ;
; sudo systemctl set-default graphical.target ;
sleep 10 ;
reboot ;

