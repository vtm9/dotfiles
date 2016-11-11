#!/bin/bash
dconf load / < ~/dotfiles/gnome_root_dump

# install adobe fonts
sudo git clone https://github.com/adobe-fonts/source-code-pro.git -b release /usr/share/fonts/opentype/scp
fc-cache -f -v

# install antigen
git clone https://github.com/zsh-users/antigen.git ~/.zsh/antigen

# create link to zshrc
ln -s -f ~/dotfiles/.zshrc

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# create link to vimrc
ln -s -f ~/dotfiles/.vimrc

# install tmux on ubuntu
sudo apt-get install tmux

# create link to tmux.conf
ln -s -f ~/dotfiles/.tmux.conf
ln -s  ~/dotfiles/.tmux

# create link to tigrc
ln -s -f ~/dotfiles/.tigrc
