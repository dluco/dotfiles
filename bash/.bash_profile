#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

eval $(ssh-agent)

# environment variables
export PATH=$PATH:~/bin
export EDITOR=vim
export PAGER=less
export TERMINAL=axon
export BROWSER=firefox
