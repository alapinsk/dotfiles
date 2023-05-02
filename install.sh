#!/bin/bash

# UBUNTU Data Science / Spark Machine installation

conda init zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

sh -c "$(curl -fsSL https://starship.rs/install.sh)" -y -f

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
yes | sh -c ~/.fzf/install -y -f

echo "generate symlinks"
ln -s -f ~/dotfiles/.zshrc  ~/.zshrc
ln -s -f ~/dotfiles/.config/starship.toml  ~/.config/starship.toml
