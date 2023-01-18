#!/bin/bash

aptPackages="
    flameshot
    xinput
    picom
    dunst
    feh
    i3
    i3lock
    playerctl
    light
    neovim
    neofetch
    rofi
    polybar
"

if [ $(which apt) ]; then
    apt install $aptPackages
fi
