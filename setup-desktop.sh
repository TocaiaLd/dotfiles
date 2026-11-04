echo "Activating multilib"
./dotifles/scripts/multilib.sh
pacman -Syu
pacman -S --needed - < ./dotfiles/desktop/pacman.txt

./dotfiles/scripts/yay.sh

yay -S --needed - < ./dotfiles/desktop/aur.txt

./dotfiles/scripts/udisk.sh
./dotfiles/scripts/micro.sh
./dotfiles/scripts/uv.sh
./dotfiles/scripts/ly.sh
./dotfiles/scripts/ckb.sh
./dofiles/scripts/ohmyzsh.sh
./dofiles/scripts/bluez.sh

mkdir -p /home/$USER/.config

cp -r ./dotfiles/desktop/* /home/$USER/.config/

cp -r ./dotfiles/scripts/desktop/.p10k.zsh /home/$USER/

rm -rf ./dotfiles

