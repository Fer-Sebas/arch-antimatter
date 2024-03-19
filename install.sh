#! /bin/sh

AMBER="\e[38;2;255;183;0m"
RESET="\e[0m"

clear

printf "\e[1m%s\e[0m" "Do you wish to set up Arch Linux with the Antimatter environment? [Y/N]: "
read do_you_wish_to_install
printf "\n"

if [ $do_you_wish_to_install = y -o $do_you_wish_to_install = Y ]
then

    [ "$UID" -eq 0 ] || exec sudo bash "$0" "$@"
    
    printf "\n"

    printf "${AMBER}%s${RESET}%s\n\n" "Installing packages..."



    printf "\e[1;96m%s\e[0m\n%s" "* Waybar"
    sudo pacman -S waybar --noconfirm
    printf "\n"


    printf "\e[1;96m%s\e[0m\n%s" "* Hyprpaper"
    sudo pacman -S hyprpaper --noconfirm
    printf "\n"


    printf "\e[1;96m%s\e[0m\n%s" "* Rofi"
    sudo pacman -S rofi --noconfirm
    printf "\n"


    printf "\e[1;96m%s\e[0m\n%s" "* Zsh"
    sudo pacman -S zsh --noconfirm
    printf "\n"



    printf "${AMBER}\e[1m%s${RESET}%s\n\n" "Environment set up completed."

fi