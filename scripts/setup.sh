#! /bin/bash

# Installing pacman packages

PACMAN_PACKAGES="pacman -S --needed base-devel bluez btop chromium ckb-next curl discord exfatprogs firefox flatpak grim github-cli gnome-disk-utility gnome-keyring gvfs gvfs-mtp hyprpaper hyprshot kanshi ly kitty mako mpd nautilus networkmanager noto-fonts noto-fonts-cjk noto-fonts-emoji ntfs-3g pavucontrol playerctl pulseaudio qbittorrent rclone rmpc rofi rsync slurp steam udiskie udisks2 vlc waybar wget wl-clipboard yazi"

sudo $PACMAN_PACKAGES

# Installing yay

yay --version

if [ "$?" -ne 0 ]; then
    git clone https://aur.archlinux.org/yay.git

    cd yay

    makepkg -si
fi

YAY_PACKAGES="bluetui clipse proton-drive visual-studio-code-bin wifitui-bin"

yay -S --needed $YAY_PACKAGES

# moving config folders to ~/.config

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

# ly tty

sudo systemctl disable getty@tty1.service
sudo systemctl enable ly@tty1.service

# udisks2 + udiskie configuration
sudo systemctl enable --now udisks2