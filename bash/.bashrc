#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# set aliases
# --- DIRECTORIES ---
alias l='ls -CF'
alias ls='ls --color=always'
alias ll='ls -l'
alias la='ls -A'
alias pd='pushd'
alias po='popd'
alias dirs='dirs -v'

# Enable interpretation of escape sequences (ie. colors)
#alias less='less -R'

# Pass aliases to root account when using sudo
alias sudo='sudo '

# Get mimetype of a file
alias mimetype='file --brief --mime-type'

alias speaker-test='speaker-test -c 2 -t wav'

# Make firefox quiet
alias firefox='firefox 2>/dev/null'

alias zathura='zathura 2>/dev/null'

alias please='sudo'

# Enhance colored "ls" output
eval $(dircolors -b)

# History control
export HISTCONTROL=ignoreboth
export HISTSIZE=1000

# --- PROMPT ---
# source git prompt scripts
source /usr/share/git/completion/git-prompt.sh
# set bash prompt
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

# sudo completion (conflicts with bash-completion)
#complete -cf sudo
