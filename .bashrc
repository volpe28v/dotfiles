# System-wide .bashrc file for interactive bash(1) shells.
if [ -z "$PS1" ]; then
   return
fi

PS1='[\w]\n\$ '
# Make bash check its window size after a process completes
shopt -s checkwinsize

# Node
#export NODE_PATH=$HOME/.npm/lib:$PATH:/usr/local/lib/node_modules
#export PATH=$HOME/.npm/bin:/usr/local/Cellar/postgresql/9.1.4/bin:$PATH
#export MANPATH=$HOME/.npm/man:$MANPATH
export PATH=$PATH:/usr/local/share/npm/bin

#Vim
#export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
#alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
#alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'

# RVM
[ -s ${HOME}/.rvm/scripts/rvm ] && source ${HOME}/.rvm/scripts/rvm
#export DYLD_FALLBACK_LIBRARY_PATH=$HOME/.rvm/usr/lib/
#export LIBRARY_PATH=$HOME/.rvm/usr/lib/:$LIBRARY_PATH
#export LD_LIBRARY_PATH=$HOME/.rvm/usr/lib/:$LD_LIBRARY_PATH
#export PATH=$HOME/.rvm/bin:$PATH

alias rl='rvm list'
alias rgl='rvm gemset list'
alias rgu='rvm gemset use'

#rails
alias r='rails'
alias be='bundle exec'

#sh
alias a='alias'
alias ls='ls -G'
alias la='ls -a'
alias ll='ls -l'
alias j='jobs'
alias f='fg'
alias h='history'
alias hg='history | grep'

#git
alias g='git'
alias ga='git add'
alias gc='git checkout'
alias gs='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias gph='git push github master'
alias gpa='git push github master; git push heroku master'
alias gb='git branch'
alias gl='git log --oneline'
alias gg='git graph'
alias ggr='git grep'
alias grma="git status | grep deleted: | awk '{print $3}'  | xargs git rm"
alias pd="pretty-diff"

#momgodb
#export PATH=/Users/naoki/Library/mongodb/bin/:$PATH
#alias mongo_start='mongod --dbpath=/Users/naoki/Library/mongodb/data'

#postgresql
export PGDATA=/usr/local/var/postgres

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
