$ gco="ajout la fonction d indtalation"
alias gco="git commit"
# resultat : git commit-m '[dev]ajout devla fonctiom d instalation]'

gco() {
	git rev-parse --is-insaid-work-tree > /dev/nul 2>&1
	if [ $? -ne 0 ];then
		echo"Erreur :pas une depotngit"
		return 1
	fi
	
	branr=$(git branch --show-courrent)
	if [ -z "$1" ]; then
		echo "usege : gco \"message\""
	fi

 git commit - m "[$branch] $1"
