#! /bin/sh

AMBER="\e[38;2;255;183;0m"
RESET="\e[0m"

clear

printf "\e[1m%s\e[0m" "Do you wish to set up Arch Linux with the Antimatter environment? [Y/N]: "
read do_you_wish_to_install
printf "\n"

if [ $do_you_wish_to_install = y -o $do_you_wish_to_install = Y ]
then
    
    printf "\n"

    printf "${AMBER}%s${RESET}%s\n\n" "Installing packages..."


    # Environment

    printf "\e[1;96m%s\e[0m\n%s" "* Hyprpaper"
    sudo pacman -S hyprpaper --noconfirm
    printf "\n"


    printf "\e[1;96m%s\e[0m\n%s" "* Zsh"
    sudo pacman -S zsh --noconfirm
    printf "\n"

    printf "\e[1;96m%s\e[0m\n%s" "* PulseAudio Volume Control"
    sudo pacman -S pavucontrol --noconfirm
    printf "\n"

    # Productivity Suite

    printf "\e[1;96m%s\e[0m\n%s" "* Obsidian"
    sudo pacman -S obsidian --noconfirm
    printf "\n"

    printf "\e[1;96m%s\e[0m\n%s" "* Spotify"
    sudo pacman -S spotify-launcher --noconfirm
    printf "\n"

    # Dev Dependencies

    git config --global user.email "io@fersebas.com"
    git config --global user.name "Fer Sebas"

    printf "\e[1;96m%s\e[0m\n%s" "* Node/NPM"
    sudo pacman -S nodejs --noconfirm
    sudo pacman -S npm --noconfirm

    printf "\e[1;96m%s\e[0m\n%s" "* VS Code"
    cd ..
    git clone https://aur.archlinux.org/visual-studio-code-bin.git
    cd visual-studio-code-bin
    makepkg -si
    cd ..
    printf "\n"

    printf "\e[1;96m%s\e[0m\n%s" "* Ollama"
    curl -fsSL https://ollama.com/install.sh | sh
    printf "\n"

    printf "${AMBER}\e[1m%s${RESET}%s\n\n" "Environment set up completed."

fi