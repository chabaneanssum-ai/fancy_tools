#!/bin/bash
set -e
REPO_URL='https://github.com/chabaneanssum-ai/fancy_tools.git'
#!/bin/bash
set -e

# Configuration
REPO_URL='https://github.com/votre_login/fancy_tools.git'
SRC_DIR=~/fancy_tools

# Fonction utilitaire : ajoute une ligne si absente
add_if_missing() {
    grep -qF "$1" ~/.bashrc || echo "$1" >> ~/.bashrc
}

echo "--- Début de l'installation de Fancy Tools ---"

# 1. Sauvegarder ~/.bashrc avec horodatage
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
cp ~/.bashrc ~/.bashrc.bak_$TIMESTAMP
echo "Sauvegarde effectuée : ~/.bashrc.bak_$TIMESTAMP"

# 2. Sourcer .aliases dans ~/.bashrc (sans doublon)
# On suppose que le fichier .aliases sera dans ton dossier personnel
add_if_missing "[ -f ~/.aliases ] && . ~/.aliases"

# 3. Sourcer fancy_functions.sh dans ~/.bashrc (sans doublon)
add_if_missing "[ -f ~/fancy_functions.sh ] && . ~/fancy_functions.sh"

# 4. Ajouter ~/bin au PATH dans ~/.bashrc (sans doublon)
add_if_missing 'export PATH="$HOME/bin:$PATH"'

# 5. Cloner le dépôt dans ~/src (si absent)
if [ ! -d "$SRC_DIR" ]; then
    echo "Clonage du dépôt..."
    mkdir -p ~/src
    git clone "$REPO_URL" "$SRC_DIR"
else
    echo "Le répertoire $SRC_DIR existe déjà. Passage au suivant."
fi

echo "--- Configuration terminée ---"
echo "Relancez votre terminal ou tapez 'source ~/.bashrc' pour appliquer les changements."
