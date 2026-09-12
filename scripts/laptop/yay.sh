# Installing yay
yay --version

if [ "$?" -ne 0 ]; then
    echo "INSTALLING YAY!"
    
    git clone https://aur.archlinux.org/yay.git

    cd yay

    makepkg -si
else
    echo "YAY ALREADY INSTALLED!"
fi