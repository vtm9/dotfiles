TAGS := all

install_yay:
	yay -S --needed ansible \
		ripgrep the_silver_searcher zsh fzf jq \
		tmux alacritty kitty neovim vim \
		zsh git curl tzdata \
		slack-desktop google-chrome chromium telegram-desktop \
		ca-certificates vlc cowsay \
		kubetail k9s kubectl-bin \
		htop docker  antibody-bin asdf-vm  \
		ttf-opensans ttf-jetbrains-mono postman zoom


all-playbooks:
	ansible-playbook all.yml -i local -vv -K

install_distribs:
	ansible-playbook distribs.yml -i local -vv -K --tags $(TAGS)

install_gems:
	ansible-playbook distribs.yml -i local -v --tags ruby

install_npm:
	ansible-playbook distribs.yml -i local -v --tags js

install_pip:
	ansible-playbook distribs.yml -i local -v --tags py

install_elixir:
	ansible-playbook distribs.yml -i local -v --tags elixir

nvim_configure:
	ansible-playbook nvim.yml -i local -vvv -e curdir=$(CURDIR) -K

install_dotfiles:
	ansible-playbook dotfiles.yml -i local -vvv -e curdir=$(CURDIR) -K
