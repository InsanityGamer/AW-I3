#
Optimal to start from a base FedoraServer40 install

Steps:

1. 
```sudo dnf update -y```

2. 
```sudo dnf install git```

3. 
```git clone https://github.com/InsanityGamer/AW-I3```

4. 
```bash ./AW-I3/install-config.sh```

## Goals:
-provides a quick method of installing a lightweight GUI (400mb) and basic tooling.

Components

flatpak - fedoras open source altennative package manager
ripgrep -used for nvim
gcc - binary management
nm-connection-editor-desktop -Networking tool
nm-connection-editor - networking tool
dunst - notification tool
gnome-screenshot - screenshot tool
firefox - Browser
alacritty - terminal
neovim - vi with tools and plugins
pavucontrol pipewire libglvnd-gles - audio manager 
xfce4-panel  - xfce is cool
xfce4-settings - configured bars
thunar - GUI file manager
feh - photo manager
xset - x server manager
xrandr - x server resolution
rofi - Program launcher
i3 - Easy to use Window manager
xinit - lets isolate the x server from login
greetd tuigreet - Tui login manger
Xorg - X server

