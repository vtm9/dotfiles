ZSHA_BASE=~/.zsh
source $ZSHA_BASE/antigen/antigen.zsh

export EDITOR='vim'
bindkey "\e." insert-last-word
export TERM="xterm-256color"

antigen use oh-my-zsh
#autoload -U colors && colors

HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="true"

# **********************************************************
# *************************THEME**************************
# **********************************************************
antigen theme bhilburn/powerlevel9k powerlevel9k

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator dir vcs vi_mode)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(rbenv)

# **********************************************************
# *************************PLUGINS**************************
# **********************************************************

antigen bundle git
antigen bundle ruby
antigen bundle rails
antigen bundle bundler
antigen bundle rbenv
antigen bundle tmux

antigen bundle vi-mode
antigen bundle ubuntu
antigen bundle extract
antigen bundle docker
antigen bundle docker-compose
antigen bundle bgnotify
antigen bundle command-not-found
antigen bundle colored-man-pages
# antigen bundle psprint/zsh-navigation-tools
antigen bundle zsh-users/zsh-completions.git
antigen bundle zsh-users/zsh-autosuggestions.git
antigen bundle zsh-users/zsh-syntax-highlighting.git
antigen bundle unixorn/autoupdate-antigen.zshplugin

ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

autoload -U compinit && compinit
antigen apply

# aliases
alias a='atom .'
alias rp='bundle exec rspec spec'
alias d='docker'
alias di='docker images'
alias de='docker exec -it'
alias da='docker attach'
alias dr='docker run -it'
alias dsta='docker stop $(docker ps -a -q)'
alias dps='docker ps | cut -c-$(tput cols)'
alias doc='docker-compose'
alias docu='docker-compose up -d'
alias tm='tmux attach || tmux new'
alias s='tig status'
alias c='git commit -m'
alias k='kill -9'
alias p='ps aux G'
alias tg='tar -czvf'
alias ds='du -sckh * | sort -rh'
alias today='calendar -A 0 -f /usr/share/calendar/calendar.mark | sort'
alias cat='pygmentize -g'
alias v='vim'
alias v.='vim .'
alias sv='sudo vim'
alias z='vim ~/.zshrc'
alias vr='vim ~/.vimrc'
alias vt='vim ~/.tmux.conf'
alias cl='clear'
alias path='echo $PATH | tr -s ":" "\n"'
unalias ag

mkc () {
    mkdir -p "$@" && cd "$@"
}

eval "$(rbenv init -)"

# Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]]  && source "$HOME/.rvm/scripts/rvm"

bindkey '^[^ ' autosuggest-execute
bindkey "\e " autosuggest-accept
function exists { which $1 &> /dev/null }
