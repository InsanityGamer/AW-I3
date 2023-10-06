Optimal to start from a base FedoraServer/37/38/39? install


```bash ./AW-I3/install-config.sh```

```git clone https://github.com/InsanityGamer/AW-I3```


Basic Operation the of the install-config.sh script:

(1) .config directory has files with ready made .conf files.
       (a.) ./AW-I3/.config is copied to your $HOME/.config
 
(2) reach into Fedoras repos and grab basic utilities for a lightweight graphical interface Based on I3-Gaps.
    (a) ./dnflist3 is calling for rpms using the "Dandified YUM" or just the DNF package manager(Rhel, Centos, Fedora)
    (b) rofi is a menu utility that provides quick access to installed programs
    (c) firefox for browsing. i could use lynx or links but sometimes convienence trumps performance.
    (d) pavucontrol for audio control.
    (e) LightDM as the display manager(Login screen), you will have to take a visit to the /etc/ folders to select a picture for your lightdm BackGround pic.
        (1.) Slick-greeter is for lightdm its a greeter...
    (f) Xorg, I3(configured as I3-Gaps), Xrandr for display stuff. buncha computer science stuff. I'm still trying to figure out how to use Wayland.
    (g) polybar for overall system monitoring (network monitoring,to include your IP address) has been commented out for network security purposes)
       (1.) Todo list: remove the ability to see hostname in polybar config for security purposes. 
       (2.) Find a more efficient bar or make polybar prettier
    (h) htop for more detailed system performance
    (i) qterminal for terminal

(3) set system to graphical.target and reboot

Things To Consider:
    (1) Pre-built Config Files
        (a.) polybar, basic config file modified for security purposes and colored blue for the vibes
        (b.) I3 configured I3-Gaps, added a blue border to match polybar
            (1.) in the I3 config file:
                - feh executes $USER/.config/i3/bg_pic/*  as the BackGround picture. the one provided is very edgy :D, but also contains instructions for begginners.
                - Xrandar does stuff. youre gonna have to reconfigure that yourself depending on your monitors.
                - so far in virtual machines this has always worked.
                - enabled rofi
        (C.) rofi comes with its own configuration tool, so thats cool, but also i did find the full .conf file, i dont remember where or how, but i added the ability to see program Icons and left everything else uncommented or untouched. dig around in there at your own cost.
