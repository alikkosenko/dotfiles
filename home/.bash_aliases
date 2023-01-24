# bash alises

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'


# alert command for long-term commands
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Check if current system is Debian or Ubuntu
if [[ `uname -a` =~ "Ubuntu" ||  `uname -a` =~ "Debian" ]];then
	alias upgd='sudo apt update && sudo apt upgrade && sudo apt autoremove'
fi

# Check if current user is root
if ! (( `id -u` ));then
	alias drop_caches='echo 3 > /proc/sys/vm/drop_caches'
fi
