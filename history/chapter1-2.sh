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


# Chapitre 1.2 - Introducion
# ----------------------------------------------------------------------

echo -e "${rougefonce}${date}
Mr. Robot :
${vertfonce}Connecte toi aux serveurs de Coca-Cola.${neutre}" | pv -qL 20
