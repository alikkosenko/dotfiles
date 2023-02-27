# .bash_functions
#
# Useful shell functions



if [ -d $(locate -b obsidian_main) ]; then
	obsidian_path="$(locate -b obsidian_main)"
fi


# In development
#push_obsidian () {
#	if [ -x $(which git) ]; then
#		cd $obsidian_path
#		git add .
#		git commit
#		git push
#	fi
#}
