# ~/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# Append to the history file, don't overwrite it
shopt -s histappend

# For setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# Check the window size after each command and, if necessary, update the values
# of LINES and COLUMNS.
shopt -s checkwinsize
export DISPLAY='localhost:0.0'

# make less more friendly for non-text input files, see lesspipe(1)
if [ -x /usr/bin/lesspipe ]; then
  eval "$(SHELL=/bin/sh lesspipe)"
fi

# Set variable identifying the chroot you work in
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
  debian_chroot=$(cat /etc/debian_chroot)
fi

# Enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'

  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi

# Some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

if [ -f ~/.fzf.bash ]; then
  . ~/.fzf.bash
fi

if [ -f ~/enhancd/init.sh ]; then
  export ENHANCD_DOT_ARG='...'
  export ENHANCD_DISABLE_HOME=1
  . ~/enhancd/init.sh
fi

if [ -f ~/liquidprompt/liquidprompt ]; then
  . ~/liquidprompt/liquidprompt
fi

# SSH-keygen manager
eval `keychain --eval --agents ssh id_rsa`
