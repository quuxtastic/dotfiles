# colorized outputs
if [ -x /usr/bin/dircolors ]; then
    eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
    alias ack-grep='ack-grep --color'
fi

alias ll='ls -lhB'
alias la='ls -lA'
alias lla='ls -lhBA'
alias l='ls -CF'

alias c='cd'

alias e='$EDITOR'

alias srcgrep=ag

alias xclip='xclip -sel clip'
