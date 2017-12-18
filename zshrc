# Load promptinit and awesome prom[t
autoload -U promptinit; promptinit
prompt pure

# This gives normal completion behaviour
zstyle ':completion:*' completer _complete
# This sets the case insensitivity and that matching may occur on both sides of the current word
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'
# Reload completion system
autoload -Uz compinit
compinit

HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

# example aliases
alias rc="bundle exec rails console"
alias gs="git status"
alias gco="git checkout"
alias gd="git diff"
alias gc="git commit --verbose"
alias ga="git add ."
alias gps="git push"
alias gpl="git pull --rebase"
alias rdc="bundle exec rails dbconsole"
alias rs="bundle exec rails server"
alias glp="git log --color --graph --pretty=format:'''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold yellow)<%an>%Creset'"

export EDITOR='vim'
export PATH=/usr/local/sbin:$PATH

# Customize to your needs...
# eval "$(direnv hook zsh)"

# Postgres.app
# export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

# Fix NERDTree troubles
export LC_ALL=en_US.utf-8
export LANG="$LC_ALL"

# Rbenv
# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

docker_cleanup(){
  docker rm -v $(docker ps --filter status=exited -q 2>/dev/null) 2>/dev/null
  docker rmi $(docker images --filter dangling=true -q 2>/dev/null) 2>/dev/null
}

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash