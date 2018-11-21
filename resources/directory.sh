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

# Check Current Directory in Game
source $PWD/environment/administration/administration.sh
source $PWD/environment/racine.sh
source $PWD/environment/recipe/recette.sh
source $PWD/environment/root/root.sh

if [[ $WhereIAM = "racine" ]] && [[ $WhereIAM = "racine" ]]; then
  source $PWD
fi



admin=administration


if [[ $whereIAM = "$racine" ]]; then
  source $PWD/environement/racine.sh

elif [[ $whereIAM = "$admin" ]]; then
  source $PWD/environement/administration.sh

elif [[ $whereIAM = "recette" ]]; then
  #statements
elif [[ $whereIAM =  ]]; then
  #statements
fi
