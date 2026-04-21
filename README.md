# fancy_tools
cette projet sert a faire des aliace gitfonalite

.aliases : Définit des raccourcis pour les commandes Git fréquentes (gss, gpl, gpu, gap). Cela réduit le temps de saisie et les erreurs de frappe.
fancy_functions.sh : Contient la fonction intelligente gco. Elle automatise le formatage des messages de commit en incluant dynamiquement le nom de la branche actuelle, tout en vérifiant la présence d'un message utilisateur.
install.sh : Le cœur de l'automatisation. Il configure l'environnement Linux de l'utilisateur de manière idempotente (ne crée pas de doublons). Il gère la sauvegarde sécurisée du .bashrc, le sourcing des outils et la mise à jour du PATH.
bin/updateFancyTools : Permet la maintenance du projet en récupérant les dernières modifications depuis le dépôt distant
