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

# Open File
if [[ $Command == "cat coca-cola.txt" ]]; then
  read -p "Un mot de passe est nécessaire pour lire ce fichier : " Password ;
  # Check Password
  if [[ $Password == "Ckbm322Fd2RX" ]];then
    source $PWD/environment/recipe/coca-cola-text.sh
  # Error Password
  else
      echo "Erreur : mot de passe incorrect"
  fi
fi
