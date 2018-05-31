TAGS := all

all:
	ansible-playbook all.yml -i local -vv -K

install_distribs:
	ansible-playbook distribs.yml -i local -vv -K --tags $(TAGS)

nvim_configure:
	ansible-playbook nvim.yml -i local -vvv -e curdir=$(CURDIR) -K

install_dotfiles:
	ansible-playbook dotfiles.yml -i local -vvv -e curdir=$(CURDIR) -K
