#!/bin/bash

sudo true

# install utils
sudo apt-get -y install git-core curl libssl-dev libreadline-dev zlib1g-dev

# install ruby if need
curl -L raw.github.com/fesplugas/rbenv-installer/master/bin/rbenv-installer | bash
rbenv install 2.4.3
rbenv global 2.4.3
rbenv rehash

# install docker, docker-compose
wget -qO- https://get.docker.com/ | sh
COMPOSE_VERSION=`git ls-remote https://github.com/docker/compose | grep refs/tags | grep -oP "[0-9]+\.[0-9]+\.[0-9]+$" | tail -n 1`
sudo sh -c "curl -L https://github.com/docker/compose/releases/download/${COMPOSE_VERSION}/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose"
sudo chmod +x /usr/local/bin/docker-compose
sudo sh -c "curl -L https://raw.githubusercontent.com/docker/compose/${COMPOSE_VERSION}/contrib/completion/bash/docker-compose > /etc/bash_completion.d/docker-compose"
sudo usermod -aG docker $USER

# instal pygment for cat
sudo apt -y install python-pygments
sudo apt -y install python-pip

# install neovim
sudo apt-get install neovim

# install tmux on ubuntu
git clone https://github.com/tmux/tmux.git ~/distrib/tmux
sudo apt-get -y install automake libevent-dev xclip
cd ~/distrib/tmux && sh autogen.sh && ./configure && make
sudo make install prefix=/usr

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
make clean && make configure && ./configure
make  prefix=/usr && sudo make install prefix=/usr

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
ln -s ~/.vimrc ~/.config/nvim/init.vim

# create link to .tmux
ln -s  ~/dotfiles/.tmux.conf

# create link to tigrc
ln -s -f ~/dotfiles/.tigrc

# create link to inputrc
ln -s -f ~/dotfiles/.inputrc

# install https://github.com/ierton/xkb-switch
sudo apt-get install libxkbfile-dev
cd ~/distrib
git clone https://github.com/ierton/xkb-switch
cd xkb-switch
mkdir build && cd build
cmake ..
make
sudo make install
pip install --upgrade neovim

# install nodejs
curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
sudo apt-get install nodejs

# install rust
curl https://sh.rustup.rs -sSf | sh
cargo install ripgrep

# gems
gem install bundler
gem install ripper-tags
gem install slim_lint

#common software
sudo apt-get install yamllint
