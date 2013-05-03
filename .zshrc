# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME='robbyrussell'
ZSH_THEME='wedisagree'
# Example aliases
 alias gs="git status"
 alias gco="git checkout"
 alias gd="git diff"
 alias gc="git commit"
 alias ga="get add"
 alias gps="git push origin master"
 alias gp="git pull origin master"
 alias rdc="bundle exec rails dbconsole"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ruby)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
alias tmux="TERM=screen-256color-bce tmux"
export EDITOR='vim'
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

[[ -n "${key[Up]}"      ]] && bindkey  "${key[Up]}"      history-beginning-search-backward
[[ -n "${key[Down]}"    ]] && bindkey  "${key[Down]}"    history-beginning-search-forward

#for rvm
export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_FREE_MIN=500000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=100000000
###########
