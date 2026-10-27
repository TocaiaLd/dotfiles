sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s /bin/zsh

sudo mv ./dotfiles/fonts/* /usr/share/fonts/
sudo fc-cache -fv

yay -S --noconfirm zsh-theme-powerlevel10k-git

echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >> .zshrc