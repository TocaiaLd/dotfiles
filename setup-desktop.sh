. ./dotfiles/scripts/multilib.sh

sudo pacman -S --needed - < ./dotfiles/desktop/pacman.txt

. ./dotfiles/scripts/yay.sh

yay -S --needed - < ./dotfiles/desktop/aur.txt

. ./dotfiles/scripts/udisk.sh

. ./dotfiles/scripts/micro.sh

. ./dotfiles/scripts/uv.sh

. ./dotfiles/scripts/ly.sh

. ./dotfiles/scripts/ckb.sh

. ./dofiles/scripts/ohmyzsh.sh

. ./dofiles/scripts/bluez.sh

mkdir -p /home/$USER/.config

mv ./dotfiles/desktop/*/ /home/$USER/.config/

mv ./dotfiles/scripts/desktop/.p10k.zsh /home/$USER/

sudo rm -rf ./dotfiles

