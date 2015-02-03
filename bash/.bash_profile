#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# environment variables
export PATH=$PATH:~/bin
export EDITOR=vim
export PAGER=less
export BROWSER=firefox

export TERMINAL=axon
export PANEL_FIFO="/tmp/panel-fifo"

# If X is not already running, this is tty1,
# and this is not the root user, then start X (or sedia).
# NOTE: Using "exec" means that killing X results in
# the user being logged out.
[[ -z "$DISPLAY" ]] && [[ "$XDG_VTNR" -eq 1 ]] && [[ "$EUID" -ne 0 ]] && \
#	exec sedia
	exec startx ~/.xinitrc
