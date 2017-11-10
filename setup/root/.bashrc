
export LS_OPTIONS='--color=auto'
export TERM=xterm-256color

eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'

# Some more alias to avoid making mistakes:
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'


if [ -f /usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh ]; then
	. /usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
fi
