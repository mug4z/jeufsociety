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


# Check Directory
CheckCommand="cd\s"
# Navigation in the directories
if [[ $Command =~ $CheckCommand ]]; then
  # Go to Administrationn
  if [[ $Command == "cd administration" ]]; then
    source $PWD/environment/administration/administration.sh
    Path="coca-cola/racine/administration>"
  # Go to Racine
  elif [[ $Command == "cd ~" ]]; then
    source $PWD/environment/racine.sh
    Path="coca-cola/racine>"
  # Go to Recipe
  elif [[ $Command == "cd recette" ]]; then
    source $PWD/environment/recipe/recette.sh
    Path="coca-cola/racine/recette>"
  # Go to Root
  elif [[ $Command == "cd root" ]]; then
    source $PWD/environment/root/root.sh
    Path="coca-cola/racine/root>"
  # Error Folder
  else
    echo "Erreur commande : le dossier n'existe pas"
  fi

# Show Content
elif [[ $Command = "ls" ]]; then
  # Show Administrationn
  if [[ $WhereIAM = "administration" ]]; then
    source $PWD/environment/administration/administration.sh
  # Show Racine
  elif [[ $WhereIAM = "racine" ]]; then
      source $PWD/environment/racine.sh
  # Show Recipe
  elif [[ $WhereIAM = "recette" ]]; then
    source $PWD/environment/recipe/recette.sh
  # Show Root
  elif [[ $WhereIAM = "root"  ]]; then
    source $PWD/environment/root/root.sh
  fi

# Error Command
else
  echo 'Erreur commande : veuillez écrire la commande "help" pour afficher la page aide'

# End Check Directory
fi




echo $WhereIAM
