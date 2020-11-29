# -------- Commoon --------
export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\]@\[\033[01;36m\]\h\[\033[00m\]: \[\033[01;34m\]\w\[\033[00m\]\n\$ '

# set vim as default editor
export VISUAL=vim
export EDITOR="$VISUAL"

# check the window size after each command
shopt -s checkwinsize

# -------- History --------
export HISTSIZE=1000
export HISTFILESIZE=2000

# append to the history file, don't overwrite it
shopt -s histappend

# set shortcuts for history completion
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# ignore case on auto-completion
bind 'set completion-ignore-case on'

# show auto-completion list automatically, without double tab
bind 'set show-all-if-ambiguous on'

# -------- Alias --------
alias ll="ls -Alh"
alias lsd="ls -AlF | grep /$"

alias h='history | grep '
alias p='ps aux | grep '
alias f='find . | grep '

# alias to show space usage
alias diskspace="du -S | sort -n -r | less"

# alias for tmux
alias tmux-session="tmux new-session -A -s $1"

# -------- Tmux --------
export TERM=xterm-256color
export color_prompt=yes

#[[ -z "$TMUX" ]] && eval "tmux-session main"
