#!/bin/bash
# TODO: create new gome dump
# dconf load / < ~/dotfiles/gnome_root_dump

sudo true

# install adobe fonts
sudo git clone https://github.com/adobe-fonts/source-code-pro.git -b release /usr/share/fonts/opentype/scp
fc-cache -f -v

# install git and rbenv
sudo apt-get -y install git-core curl libssl-dev libreadline-dev zlib1g-dev
curl -L raw.github.com/fesplugas/rbenv-installer/master/bin/rbenv-installer | bash

# install ruby if need
rbenv install 2.3.3
rbenv global 2.3.3
rbenv rehash

# install docker, docker-compose
wget -qO- https://get.docker.com/ | sh
COMPOSE_VERSION=`git ls-remote https://github.com/docker/compose | grep refs/tags | grep -oP "[0-9]+\.[0-9]+\.[0-9]+$" | tail -n 1`
sudo sh -c "curl -L https://github.com/docker/compose/releases/download/${COMPOSE_VERSION}/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose"
sudo chmod +x /usr/local/bin/docker-compose
sudo sh -c "curl -L https://raw.githubusercontent.com/docker/compose/${COMPOSE_VERSION}/contrib/completion/bash/docker-compose > /etc/bash_completion.d/docker-compose"

# instal pygment for cat
sudo apt -y install python-pygments
sudo apt -y install python-pip

# install neovim
sudo apt-get install neovim

# install tmux on ubuntu
sudo apt-get -y install tmux

# install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# install antigen
git clone https://github.com/zsh-users/antigen.git ~/.zsh/antigen

# install vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install tig
mkdir ~/distrib
git clone https://github.com/jonas/tig.git ~/distrib/tig
sudo apt-get install libncurses5-dev libncursesw5-dev
cd ~/distrib/tig
make clean
make configure
./configure
make  prefix=/usr
sudo make install prefix=/usr

# install libpq for pg
sudo apt-get -y install libpq-dev

# install some apps for nvim
sudo apt-get -y install build-essential cmake
sudo apt-get -y install python-dev python3-dev
sudo apt -y install silversearcher-ag

# config unity
sudo apt-get install compizconfig-settings-manager
sudo apt-get install gnome-tweak-tool

# create link to zshrc
ln -s -f ~/dotfiles/.zshrc

# create link to vimrc
ln -s -f ~/dotfiles/.vimrc

# create link to tmux.conf
ln -s -f ~/dotfiles/.tmux.conf
ln -s  ~/dotfiles/.tmux

# create link to tigrc
ln -s -f ~/dotfiles/.tigrc

