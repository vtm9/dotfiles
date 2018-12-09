TAGS := all

all:
	ansible-playbook all.yml -i local -vv -K

install_distribs:
	ansible-playbook distribs.yml -i local -vv -K --tags $(TAGS)

install_gems:
	ansible-playbook distribs.yml -i local -v --tags ruby

install_npm:
	ansible-playbook distribs.yml -i local -v --tags js

install_pip:
	ansible-playbook distribs.yml -i local -v --tags py

install_pacman:
	ansible-playbook distribs.yml -i local -v --tags arch

nvim_configure:
	ansible-playbook nvim.yml -i local -vvv -e curdir=$(CURDIR) -K

install_dotfiles:
	ansible-playbook dotfiles.yml -i local -vvv -e curdir=$(CURDIR) -K
