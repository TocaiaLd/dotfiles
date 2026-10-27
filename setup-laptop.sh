. ./dotfiles/scripts/multilib.sh

sudo pacman -S --needed - < ./dotfiles/laptop/pacman.txt

. ./dotfiles/scripts/yay.sh

yay -S --needed - < ./dotfiles/laptop/aur.txt

. ./dotfiles/scripts/udisk.sh

. ./dotfiles/scripts/micro.sh

. ./dotfiles/scripts/uv.sh

. ./dotfiles/scripts/ckb.sh

. ./dofiles/scripts/ohmyzsh.sh

. ./dofiles/scripts/bluez.sh

mkdir -p /home/$USER/.config

mv ./dotfiles/laptop/*/ /home/$USER/.config/

mv ./dotfiles/scripts/laptop/.p10k.zsh /home/$USER/

sudo rm -rf ./dotfiles

