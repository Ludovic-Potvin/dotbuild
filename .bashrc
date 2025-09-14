#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#tmux
#clear
fastfetch

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

alias gst='git status'

eval "$(starship init bash)"

eval "$(fzf --bash)"
eval "$(zoxide init bash --cmd cd)"

# uv
export PATH="/home/lpotvin/.local/share/../bin:$PATH"
