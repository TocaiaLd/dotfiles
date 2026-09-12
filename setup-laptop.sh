. ./scripts/laptop/yay.sh

yay -S --needed - < ./laptop/aur.txt

sudo pacman -S --needed - < ./laptop/pacman.txt

. ./scripts/laptop/udisk.sh

. ./scripts/laptop/ly.sh

. ./scripts/laptop/micro.sh

. ./scripts/laptop/uv.sh

mkdir -p .config

mv laptop/* .config/

rm -rf dotfiles