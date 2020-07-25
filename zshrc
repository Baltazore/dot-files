source /usr/local/share/antigen/antigen.zsh
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle horosgrisa/autoenv
antigen apply

autoload -U promptinit; promptinit
eval "$(starship init zsh)"

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

alias gs="git status"
alias gco="git checkout"
alias gd="git diff"
alias gc="git commit --verbose"
alias ga="git add ."
alias gps="git push"
alias gpl="git pull --rebase"
alias glp="git log --color --graph --pretty=format:'''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold yellow)<%an>%Creset'"

export EDITOR='nvim'
export PATH=/usr/local/sbin:$PATH

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

docker_cleanup(){
  docker rm -v $(docker ps --filter status=exited -q 2>/dev/null) 2>/dev/null
  docker rmi $(docker images --filter dangling=true -q 2>/dev/null) 2>/dev/null
}

restart_bluetooth(){
  sudo kextunload -b com.apple.iokit.BroadcomBluetoothHostControllerUSBTransport
  sudo kextload -b com.apple.iokit.BroadcomBluetoothHostControllerUSBTransport
}

export VOLTA_HOME="/Users/kirillshaplyko/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
