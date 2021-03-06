# skip if not running interactively
[ -z "$PS1" ] && return

# machine-specific stuff that controls bashrc needs to go in here.
# notably, setting NOGUI changes several options
[ -f "$HOME/.bashrc_local.pre" ] && source "$HOME/.bashrc_local.pre"

export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
export HISTCONTROL=ignoreboth

shopt -s histappend
[ -z "$NOGUI" ] && shopt -s checkwinsize

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# additional bash stuff
[ -f "$HOME/.bash_env" ] && source "$HOME/.bash_env"
[ -f "$HOME/.bash_functions" ] && source "$HOME/.bash_functions"
[ -f "$HOME/.bash_aliases" ] && source "$HOME/.bash_aliases"
[ -f "$HOME/.bash_prompt" ] && source "$HOME/.bash_prompt"

# machine-specific stuff
[ -f "$HOME/.bashrc_local" ] && source "$HOME/.bashrc_local"
