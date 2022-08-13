#!/bin/sh

Base() {
    # Installs basic dependencies for yay
    pacman -S --needed git base-devel nodejs rust go curl wget
}

Yay() {
    # Clones yay repository
    git clone https://aur.archlinux.org/yay.git

    # Builds and isntalls yay
    cd yay
    makepkg -si
}

Submodules() {
    # Installs submodules
    yay -S polybar i3-gaps i3lock dunst rofi
    mkdir .config_tmp
    git clone --recurse-submodules git@github.com:roblescristian4722/.config.git .config_tmp
    cp -rf .config_tmp/* .config
    rm -rf .config_tmp
}

All() {
    Base
    Yay
    Submodules
}

HelpBase() {
    echo 'Installs all my custom Linux configs and dotfiles automatically
        Syntax: ./install_dependencies.sh <flags> <action> <specific_action>
        * Flags:
            -h or --help    shows this help screen'
}
HelpActions() {
    echo '
        * Actions:
            install         installs dependencies'
}
HelpSpecificActions() {
    echo '
        * specific_action
            base            installs base dependencies like git and wget
            yay             install yay
            submodules      install git submodules (i3, dunst, zsh, etc)
            all             install all dependencies'
}
Help() {
    HelpBase
    HelpActions
    HelpSpecificActions
}

if [[ $1 == "--help" ]] || [[ $1 == "-h" ]]; then
    Help
elif [[ $1 == "install" ]]; then
    case $2 in
        base)
            Base
        ;;
        yay)
            Yay
        ;;
        all)
            All
        ;;
        submodules)
            Submodules
        ;;
        *)
           HelpSpecificActions 
        ;;
    esac
else
    Help
fi
