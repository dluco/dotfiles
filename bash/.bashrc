#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# set aliases
# --- DIRECTORIES ---
alias l='ls -CF'
alias ls='ls --color=always'
alias la='ls -A'
alias pd='pushd'
alias po='popd'
alias dirs='dirs -v'

#alias less='less -R'
alias mimetype='file --brief --mime-type'
alias firefox='firefox 2>/dev/null'
alias termname=$'basename $(ps -f -p $(cat /proc/$(echo $$)/stat | cut -d \  -f 4) | tail -1 | sed \'s/^.* //\')'

# set bash prompt
# with set-title
#PS1="\[\033]0;\u@\h:\w\007\][\u@\h \W]\$ "
PS1="[\u@\h \W]\$ "

#complete -cf sudo

case $TERM in
	st-256color)
		PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME} ${PWD/#$HOME/"~"}\007"'
	;;
esac

#set look&feel of java apps
#export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
