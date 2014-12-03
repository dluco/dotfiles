#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# environment variables
export PATH=$PATH:~/bin
export EDITOR=vim
export PAGER=less
export TERMINAL=axon
export BROWSER=firefox

# If X is not already running, this is tty1,
# and this is not the root user, then start sedia.
# NOTE: Using "exec" means that killing X results in
# the user being logged out.
[[ -z "$DISPLAY" ]] && [[ "$XDG_VTNR" -eq 1 ]] && [[ "$EUID" -ne 0 ]] && \
	exec sedia
