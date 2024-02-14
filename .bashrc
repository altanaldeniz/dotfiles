# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth
# append to the history file, don't overwrite it
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000

# aliases
alias ls='ls --color'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

export PS1='\[\e[1m\][\[\e[97m\]\u\[\e[90m\]@\[\e[97m\]\h\[\e[0m\] \[\e[90;1m\]\W\[\e[39m\]]\[\e[0m\]\$ '
LS_COLORS=$LS_COLORS:'di=01;90:fi=1;97' ; export LS_COLORS

export PATH=~/.local/bin:$PATH