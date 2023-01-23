# bash alises

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Check if current system is Debian or Ubuntu
if [[ `uname -a` =~ "Ubuntu" ||  `uname -a` =~ "Debian" ]];then
	alias upgd='sudo apt update && sudo apt upgrade && sudo apt autoremove'
fi

# Check if current user us root
if ! (( `id -u` ));then
	alias drop_caches='echo 3 > /proc/sys/vm/drop_caches'
fi
