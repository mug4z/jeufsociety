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

clear

# Chapitre 2 - Bienvenu chez Coca-Cola
# ----------------------------------------------------------------------

echo "                                                                        ";
echo " ██████╗ ██████╗  ██████╗ █████╗        ██████╗ ██████╗ ██╗      █████╗ ";
echo "██╔════╝██╔═══██╗██╔════╝██╔══██╗      ██╔════╝██╔═══██╗██║     ██╔══██╗";
echo "██║     ██║   ██║██║     ███████║█████╗██║     ██║   ██║██║     ███████║";
echo "██║     ██║   ██║██║     ██╔══██║╚════╝██║     ██║   ██║██║     ██╔══██║";
echo "╚██████╗╚██████╔╝╚██████╗██║  ██║      ╚██████╗╚██████╔╝███████╗██║  ██║";
echo " ╚═════╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝       ╚═════╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝";
echo "                                                                        ";
echo "             ACCÈS INTERDIT AUX PERSONNES NON AUTORISÉES                ";
echo "                                                                        ";

# Block Keyboard
stty -echo

# Show Text
echo -e "${rougefonce}${date}
Mr. Robot :
${vertfonce}Bien ! L'étape suivante est de trouver la recette.
Je t'ai ajouté des nouvelles commandes.
Affiche-les avec la commande ${orange}help${vertfonce}.${neutre}" | pv -qL 20

#Reenable Keyboard
stty echo
