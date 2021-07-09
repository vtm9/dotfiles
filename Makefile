TAGS := all

install_yay:
	yay -S --needed ansible binutils fakeroot \
		ripgrep the_silver_searcher zsh fzf jq \
		tmux alacritty kitty neovim vim \
		antibody-bin lsd bat github-cli \
		zsh git curl tzdata patch gcc postgresql-libs \
		slack-desktop google-chrome chromium telegram-desktop \
		ca-certificates vlc cowsay inorify-tools \
		kubetail k9s kubectl-bin tig hub-bin \
		htop docker docker-compose antibody-bin \
		ttf-opensans ttf-jetbrains-mono postman-bin zoom

setup:
	ansible-playbook setup.yml -i local -vv -K

install_asdf:
	git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.1 || echo 0
	asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git || echo 0
	asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git || echo 0
	asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git || echo 0
	asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git || echo 0
	asdf plugin-add helm https://github.com/Antiarchitect/asdf-helm.git || echo 0
	asdf plugin-add terraform https://github.com/Banno/asdf-hashicorp.git || echo 0

	bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'
	asdf install nodejs 14.10.0
	asdf global nodejs 14.10.0

	asdf install erlang 23.0.4
	asdf global erlang 23.0.4

	asdf install elixir 1.10.4-otp-23
	asdf global elixir 1.10.4

	asdf install ruby 2.7.1
	asdf global ruby 2.7.1

	asdf install helm 3.3.0
	asdf global helm  3.3.0

	asdf install terraform 0.13.2
	asdf global terraform 0.13.2

all-playbooks:
	ansible-playbook all.yml -i local -vv -K

install_gems:
	gem install solargraph rubocop neovim bundler rake sqlint mailcatcher
	gem install rubocop-rspec rubocop-rails rubocop-performance rubocop-rake
	gem install sorbet sorbet-runtime
	gem install haml_lint slim_lint
	gem install brakeman reek

install_npm:
	npm install -g neovim
	npm install -g prettier eslint babel-eslint eslint-plugin-import eslint-plugin-node
	npx install-peerdeps -g eslint-config-airbnb
	npm install -g stylelint stylelint-config-recommended stylelint-config-standard
	npm install -g yaml-language-server markdownlint bash-language-server
	npm install -g dockerfile-language-server-nodejs
	npm install -g livedown yarn pug-lint
	npm install -g typings yarn pug-lint


install_pip:
	pip3 install --upgrade pynvim
	pip3 install --upgrade vim-vint
	pip3 install --upgrade autopep8 flake8 bandit pytype # black

nvim_configure:
	ansible-playbook nvim.yml -i local -vvv -e curdir=$(CURDIR) -K

install_dotfiles:
	ansible-playbook dotfiles.yml -i local -vvv -e curdir=$(CURDIR) -K

dump-gnome:
	dconf dump /org/gnome/desktop/wm/keybindings/ > gnome/wm_keybingdings.ini
	dconf dump /org/gnome/mutter/keybindings/ > gnome/mutter_keybingdings.ini
	dconf dump /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ > gnome/c0_keybingdings.ini

load-gnome:
	dconf load /org/gnome/desktop/wm/keybindings/ < gnome/wm_keybingdings.ini
	dconf load /org/gnome/mutter/keybindings/ < gnome/mutter_keybingdings.ini
	dconf load /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ < gnome/c0_keybingdings.ini
