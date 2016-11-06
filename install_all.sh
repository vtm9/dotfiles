#!/bin/bash
dconf load / < ~/dotfiles/gnome_root_dump

# install adobe fonts
sudo git clone https://github.com/adobe-fonts/source-code-pro.git -b release /usr/share/fonts/opentype/scp
fc-cache -f -v

# install antigen
git clone git@github.com:zsh-users/antigen.git ~/.zsh/antigen

# create link to zshrc
ln -s -f ~/dotfiles/.zshrc

# create link to vimrc
ln -s -f ~/dotfiles/.vimrc

# create link to tmux.conf
ln -s -f ~/dotfiles/.tmux.conf
