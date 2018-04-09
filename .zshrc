ZSHA_BASE=~/.zsh
source $ZSHA_BASE/antigen/antigen.zsh

export EDITOR='nvim'
export ELIXIR_EDITOR="nvim"
export TERM="xterm-256color"

bindkey "\e." insert-last-word
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word

antigen use oh-my-zsh
#autoload -U colors && colors
set -o vi

HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="true"

# **********************************************************
# *************************THEME**************************
# **********************************************************
antigen theme bhilburn/powerlevel9k powerlevel9k

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator dir vcs vi_mode)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(rbenv)

# **********************************************************
# *************************PLUGINS**************************
# **********************************************************

antigen bundle git
antigen bundle hub
antigen bundle aws
antigen bundle ruby
antigen bundle rake
antigen bundle rails
antigen bundle elixir
antigen bundle lein
antigen bundle bundler
antigen bundle rbenv
antigen bundle tmux

antigen bundle vi-mode
antigen bundle ubuntu
antigen bundle archlinux
antigen bundle extract
antigen bundle docker
antigen bundle docker-compose
antigen bundle felixr/docker-zsh-completion.git
antigen bundle bgnotify
antigen bundle command-not-found
antigen bundle colored-man-pages
antigen bundle zsh-users/zsh-completions.git
# antigen bundle zsh-users/zaw
antigen bundle zsh-users/zsh-autosuggestions.git
antigen bundle zsh-users/zsh-syntax-highlighting.git
antigen bundle unixorn/autoupdate-antigen.zshplugin
antigen bundle gusaiani/elixir-oh-my-zsh.git

ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
HIST_IGNORE_ALL_DUPS=true

# autoload -U compinit && compinit
antigen apply

# aliases
alias a='atom .'
alias srp='bin/spring rspec'
alias srr='bin/spring rails routes | fzf'
alias rdm='bin/spring rails db:migrate'
alias rdd='bin/spring rails db:drop'
alias rdc='bin/spring rails db:create'
alias rds='bin/spring rails db:setup'
alias rdsd='bin/spring rails db:seed'
alias rdr='bin/spring rails db:rollback'
alias srst='RET spring bin/rails db:drop db:create db:migrate'
alias rbc='rubocop -a'
alias d='docker'
alias di='docker images'
alias de='docker exec -i -t'
alias da='docker attach'
alias dr='docker run -i -t'
alias dsta='docker stop $(docker ps -a -q)'
alias dra='docker rm -f $(docker ps -a -q)'
alias dps='docker ps | cut -c-$(tput cols)'
alias doc='docker-compose'
alias docu='docker-compose up -d'
alias tm='tmux attach || tmux new'
alias tn='tmux new'
alias s='tig status'
alias c='git commit -m'
alias gfu='git fetch upstream'
alias k='kill -9'
alias p='ps aux G'
alias tg='tar -czvf'
alias ds='du -sckh * | sort -rh'
alias today='calendar -A 0 -f /usr/share/calendar/calendar.mark | sort'
alias cat='pygmentize -g'
alias v='nvim'
alias v.='nvim .'
alias veh='sudoedit /etc/hosts'
alias sv='sudo nvim'
alias z='nvim ~/.zshrc'
alias vr='nvim ~/.vimrc'
alias vt='nvim ~/.tmux.conf'
alias cl='clear'
alias path='echo $PATH | tr -s ":" "\n"'
unalias rg
# alias gcw='echo c \'$(git branch 2> /dev/null | sed -e "/^[^*]/d\" -e "s/.*\/\(.*\)/\1/")'

mkc () {
    mkdir -p "$@" && cd "$@"
}


# Add RVM to PATH for scripting
# [[ -s "$HOME/.rvm/scripts/rvm" ]]  && source "$HOME/.rvm/scripts/rvm"

bindkey '^[^ ' autosuggest-execute
bindkey "\e " autosuggest-accept
function exists { which $1 &> /dev/null }

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

setopt hist_ignore_dups
export FZF_CTRL_R_OPTS='--sort'
# export FZF_DEFAULT_COMMAND='rg --no-ignore --hidden --follow ""'
export PGUSER='postgres'
export PGPASSWORD='password'
export PGHOST='localhost'
export PAGER=less
export PATH="$HOME/.rbenv/bin:$PATH"
test -s "$HOME/.kiex/scripts/kiex" && source "$HOME/.kiex/scripts/kiex"
eval "$(rbenv init -)"
stty icrnl
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export ERL_AFLAGS="-kernel shell_history enabled"

export DB_USERNAME=postgres
export DB_PASSWORD=postgres
export DB_HOSTNAME=localhost

export QT_QPA_PLATFORMTHEME=qt5ct
alias rake="noglob bundle exec rake"

export PATH=~/.npm-global/bin:$PATH

# aoutoenv
source /usr/share/autoenv/activate.sh
