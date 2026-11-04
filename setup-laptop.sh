./dotifles/scripts/multilib.sh
pacman -Syu
pacman -S --needed - < ./dotfiles/laptop/pacman.txt

./dotfiles/scripts/yay.sh

yay -S --needed - < ./dotfiles/laptop/aur.txt

./dotfiles/scripts/udisk.sh
./dotfiles/scripts/micro.sh
./dotfiles/scripts/uv.sh
./dotfiles/scripts/ly.sh
./dofiles/scripts/ohmyzsh.sh
./dofiles/scripts/bluez.sh

mkdir -p /home/$USER/.config

cp -r ./dotfiles/laptop/* /home/$USER/.config/

cp -r ./dotfiles/scripts/laptop/.p10k.zsh /home/$USER/

rm -rf ./dotfiles

