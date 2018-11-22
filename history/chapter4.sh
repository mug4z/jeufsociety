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

# Chapitre 4 - Dernière étape
# ----------------------------------------------------------------------

# Block Keyboard
stty -echo

# Show Text
echo -e "${rougefonce}${date}
Mr. Robot :
${vertfonce}Excellent travail !
Comme promis, je ne divilguerai pas tes infomations personnelles.
Afin de finir notre tâche, tape la command ${orange}fsociety${vertfonce}.${neutre}" | pv -qL 20

#Reenable Keyboard
stty echo
