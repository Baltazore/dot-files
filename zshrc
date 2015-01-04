# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="ys"
# ZSH_THEME="robbyrussell"
# ZSH_THEME="wedisagree"
ZSH_THEME="sonicradish"
# Example aliases
alias gs="git status"
alias gco="git checkout"
alias gd="git diff"
alias gc="git commit --verbose"
alias ga="git add ."
alias gps="git push"
alias gpl="git pull --rebase"
alias rdc="bundle exec rails dbconsole"
alias rs="bundle exec rails server"
alias rc="bundle exec rails console"
alias glp="git log --color --graph --pretty=format:'''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold yellow)<%an>%Creset'"
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(ruby bundle rails postgres vi-mode)

source $ZSH/oh-my-zsh.sh
export EDITOR='vim'

[[ -n "${key[Up]}"      ]] && bindkey  "${key[Up]}"      history-beginning-search-backward
[[ -n "${key[Down]}"    ]] && bindkey  "${key[Down]}"    history-beginning-search-forward

bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

# Ruby tweaks for GC
RUBY_HEAP_MIN_SLOTS=500000
RUBY_HEAP_SLOTS_INCREMENT=250000
RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
RUBY_GC_MALLOC_LIMIT=50000000
#
# Customize to your needs...
export PATH=/usr/local/bin:$PATH
alias tmux="TERM=screen-256color-bce tmux"
eval "$(direnv hook zsh)"

# Fix NERDTree troubles
export LC_ALL=en_US.utf-8
export LANG="$LC_ALL"

[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM
# Rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
