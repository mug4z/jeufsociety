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

# Initialize WhereIAM to racine
WhereIAM="racine"

# Check Current Directory in Game
source $PWD/environment/administration/administration.sh
source $PWD/environment/racine.sh
source $PWD/environment/recipe/recette.sh
source $PWD/environment/root/root.sh

if [[ $WhereIAM = "racine" ]] && [[ $Command = "cd" ]]; then
  source $PWD
fi



#admin=administration


if [[ $Command = "ls" ]]; then # Start if ls
  if [[ $WhereIAM = "racine" ]]; then

    source "$PWD"/environment/racine.sh # Résultat ls de racine

  elif [[ $WhereIAM = "administration" ]]; then

    source "$PWD"/environment/administration/administration.sh # Résultat ls d'administration

  elif [[ $WhereIAM = "recette" ]]; then

    source "$PWD"/environment/recipe/recette.sh # Résultat ls de recette

  elif [[ $WhereIAM = "root"  ]]; then # Résultat ls de root

    source "$PWD"/environment/root/root.sh

  fi

fi # end if ls
