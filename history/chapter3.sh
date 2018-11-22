#!/bin/bash

# ----------------------------------------------------------------------
# ----------------------------------------------------------------------
#
# Project        : Hack Recipe Coca-Cola
# Name           : game-fscociety.sh
# Version        : 1.0
# Date created   : 30.10.2018
#
# Author         : Timothee Frily
#                  Michel Cruz
#
# Purpose        : The user can play the Game fscociety
#
# Precondition   : Package pv
#
# ----------------------------------------------------------------------
# ----------------------------------------------------------------------

# Call Function & Variable Scripts
# ----------------------------------------------------------------------

# Get Variables
source $PWD/resources/variables.sh

# Chapitre 3 - Que la balade commance
# ----------------------------------------------------------------------

if [[ $Command = "ls" ]]; then
echo -e "${rougefonce}${date}
Mr. Robot :
${vertfonce}Tu as trouvé la recette !
Attends... Un mot de passe est requis pour ouvrir le document.
Trouve-le, ou incris-le si tu l'as en ta possession.
Utilise la commande ${orange}cat${vertfonce} pour afficher le contenu du fichier.${neutre}" | pv -qL 20
else
echo -e "${rougefonce}${date}
Mr. Robot :
${vertfonce}Tu as trouvé la recette !
Cependant, un mot de passe est requis pour ouvrir le document.
Trouve-le.${neutre}" | pv -qL 20
fi
