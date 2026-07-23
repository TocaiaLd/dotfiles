#! /bin/bash

# Installing pacman packages

PACMAN_PACKAGES="pacman -S --needed base-devel bluez btop chromium ckb-next curl discord firefox flatpak grim github-cli hyprpaper hyprshot kanshi kitty mpd networkmanager noto-fonts noto-fonts-cjk noto-fonts-emoji pavucontrol playerctl pulseaudio qbittorrent rclone rmpc rofi rsync slurp steam vlc wget wl-clipboard yazi "

sudo $PACMAN_PACKAGES

# Installing yay

yay --version

if [ "$?" -ne 0 ]; then
    git clone https://aur.archlinux.org/yay.git

    cd yay

    makepkg -si
fi

YAY_PACKAGES="bluetui clipse visual-studio-code-bin wifitui-bin"

yay -S --needed $YAY_PACKAGES

# moving config folders to ~.config

cd t495

ls ~/.config

if [ "$?" -ne 0 ]; then
    mkdir ~/.config
fi

dirs=(*/)
f=0
for d in "${dirs[@]}"; do
    mkdir ~/.config/$d
    cp -r $d ~/.config/$d
done