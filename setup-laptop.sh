. ./dotfiles/scripts/multilib.sh

sudo pacman -S --needed - < ./dotfiles/laptop/pacman.txt

. ./dotfiles/scripts/laptop/yay.sh

yay -S --needed - < ./dotfiles/laptop/aur.txt

. ./dotfiles/scripts/laptop/udisk.sh

. ./dotfiles/scripts/laptop/ly.sh

. ./dotfiles/scripts/laptop/micro.sh

. ./dotfiles/scripts/laptop/uv.sh

. ./dotfiles/scripts/laptop/ckb.sh

. ./dofiles/scripts/laptop/ohmyzsh.sh

mkdir -p /home/$USER/.config

mv ./dotfiles/laptop/*/ /home/$USER/.config/
