autoload -U compinit promptinit
compinit
promptinit

prompt adam1

HISTFILE="$HOME/.history"
HISTSIZE=20000
SAVEHIST=$HISTSIZE

setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

alias grep='grep --color=auto' 
alias ls='ls --color=auto'
alias cp='cp --reflink=auto'

alias gds='git diff --stat'

alias gg='cd $HOME/gowork/src/github.com/c00w'

#Setup vim as editor
export EDITOR=vim
bindkey -v

#Setup reverse search
bindkey ^R history-incremental-search-backward

#Set 32 bit wine arch
export WINEARCH=win32

#Fix Java w/ xmonad
_JAVA_AWT_WM_NONREPARENTING=1

#setup scm
[ -s "/home/colin/.scm_breeze/scm_breeze.sh" ] && source "/home/colin/.scm_breeze/scm_breeze.sh"

#Setup ssh key agent
[ -s "/usr/bin/keychain" ] && $(keychain --eval --agents ssh -Q --quiet ~/.ssh/id_ed25519)

#redshift
[ -s "/usr/bin/redshift" ] && [ ! "$(pidof redshift)" ] && echo "redshift -l 40:-74"

[ -s "/usr/bin/xautolock" ] && [ ! "$(pidof xautolock)" ] && echo "xautolock -time 15 -locker slock"

#Home directory bin
PATH=$PATH:~/bin

#go
export GOPATH=~/gowork
PATH=$PATH:~/gowork/bin


