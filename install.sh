!/bin/bash
set -e
REPO_URL='https://github.com/chabaneanssum-ai/fancy_tools.git'
SRC_DIR=~/Document/TP_Gt/tp_shall/.git/fancy_tools
# Fonction utilitaire : ajoute une ligne si absente
add_if_missing() {
 grep -qF "$1" ~/.bashrc || echo "$1" >> ~/.bashrc
}
# ... (suite à compléter)
