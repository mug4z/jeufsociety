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

WhereIAM="recette"

# Show Content
if [[ $Command == cd* ]]; then
  echo "Vous êtes dans le répertoire recette."
else
  echo "coca-cola.txt"
  echo "coca-cola-dechiffre.txt"
fi
