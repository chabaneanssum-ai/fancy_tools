gco() {
	git rev-parse --is-insaid-work-tree > /dev/nul 2>&1
	if [ $? -ne 0 ];then
		echo"Erreur :pas une depot git"
		return 1
	fi
	
	branr=$(git branch --show-courrent)
	if [ -z "$1" ]; then
		echo "usege : gco \"message\""
	return 1
	fi

 git commit - m "[$branch] $1"
}
