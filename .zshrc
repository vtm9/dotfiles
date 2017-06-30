ZSHA_BASE=~/.zsh
source $ZSHA_BASE/antigen/antigen.zsh
export POWERLEVEL9K_INSTALLATION_PATH=$HOME/.antigen/repos/https-COLON--SLASH--SLASH-github.com-SLASH-bhilburn-SLASH-powerlevel9k.git

export EDITOR='nvim'
bindkey "\e." insert-last-word
export TERM="xterm-256color"

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
antigen bundle felixr/docker-zsh-completion.git
antigen bundle bgnotify
antigen bundle command-not-found
antigen bundle colored-man-pages
antigen bundle zsh-users/zsh-completions.git
# antigen bundle zsh-users/zaw
antigen bundle zsh-users/zsh-autosuggestions.git
antigen bundle zsh-users/zsh-syntax-highlighting.git
antigen bundle unixorn/autoupdate-antigen.zshplugin

ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

# autoload -U compinit && compinit
antigen apply

# aliases
alias a='atom .'
alias srp='spring rspec'
alias srr='spring rake routes | fzf'
alias rdm='spring rake db:migrate'
alias rdd='spring rake db:drop'
alias rdr='spring rake db:rollback'
alias srst='RET spring rake db:drop db:create db:migrate'
alias rbc='rubocop -a'
alias d='docker'
alias di='docker images'
alias de='docker exec -i -t'
alias da='docker attach'
alias dr='docker run -i -t'
alias dsta='docker stop $(docker ps -a -q)'
alias dps='docker ps | cut -c-$(tput cols)'
alias doc='docker-compose'
alias docu='docker-compose up -d'
alias tm='tmux attach || tmux new'
alias tn='tmux new'
alias s='tig status'
alias c='git commit -m'
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
unalias ag
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
source ~/.cargo/env
setopt hist_ignore_dups
export FZF_CTRL_R_OPTS='--sort'
# export FZF_DEFAULT_COMMAND='rg --no-ignore --hidden --follow ""'
export FZF_DEFAULT_COMMAND='rg --files --ignore --hidden --follow --glob "!.git/*"'
export PGUSER='postgres'
export PGPASSWORD='password'
export PGHOST='localhost'
export PAGER=less
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
stty icrnl
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
