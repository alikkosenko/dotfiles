# bash alises

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

if [[ `uname -a` =~ "Ubuntu" ||  `uname -a` =~ "Debian" ]];then
	alias upgd='sudo apt update && sudo apt upgrade && sudo apt autoremove'
fi

if ! (( `id -u` ));then
	alias drop_caches='echo 3 > /proc/sys/vm/drop_caches'
fi
