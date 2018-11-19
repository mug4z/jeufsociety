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


# Chapitre 0 - Introducion
# ----------------------------------------------------------------------

echo -e "${rougefonce}${date}
Mr. Robot :
${vertfonce}Maintenant, lance la commande qui te permettra de lister les adresses IP.
Cette command fonctionne comme un annuaire téléphonique - elle affiche les numéros d'accès des destinataires.${neutre}" | pv -qL 20
