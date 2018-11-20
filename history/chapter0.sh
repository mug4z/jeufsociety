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
${vertfonce}Hello friend,
Je me présente - je m'appelle Mr. Robot.
Afin d'atteindre mes objectifs, ton aide me sera précieuse.
Si tu n'acceptes pas de m'aider, toutes tes informations personnelles seront divulgées au grand public.
Je te laisse imaginer les désastres qui pourraient te tomber dessus.

Première étape est de t'introduire dans les serveurs de Coca-Cola.
Ne te pose pas de question, et exécute.

${vertfonce}Tape la commande ${orange}help${vertfonce} si tu as besoin d'aide.
${vertfonce}Elle te sera utile tout le long de notre collaboration.${neutre}" #| pv -qL 20
