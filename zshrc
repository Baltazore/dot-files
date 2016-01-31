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

alias emacs="ITERM_24BIT=1 emacs"
alias mbp="cd projects/mb/portal-ui"
alias mbs="cd projects/mb/portal-ui-server"

export EDITOR='vim'

# Customize to your needs...
export PATH=/usr/local/bin:$PATH
eval "$(direnv hook zsh)"

# Postgres.app
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

# Fix NERDTree troubles
export LC_ALL=en_US.utf-8
export LANG="$LC_ALL"

#NPM
export PATH="$PATH:$HOME/.node/bin"
# Rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PATH="/usr/local/sbin:$PATH"

# NVM
export NVM_DIR="/Users/baltazore/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

