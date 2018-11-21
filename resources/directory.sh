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

# Check Directory
CheckCommand="cd\s"
# Navigation in the directories
if [[ $Command =~ $CheckCommand ]]; then
  # Go to Administrationn
  if [[ $Command == "cd administration" ]]; then
    source $PWD/environment/administration/administration.sh
  # Go to Racine
  elif [[ $Command == "cd ~" ]]; then
    source $PWD/environment/racine.sh
  # Go to Recipe
  elif [[ $Command == "cd recipe" ]]; then
    source $PWD/environment/recipe/recette.sh
  # Go to Root
  elif [[ $Command == "cd root" ]]; then
    source $PWD/environment/root/root.sh
  else
    echo "Erreur commande : le dossier n'existe pas"
  fi
else
  echo 'Erreur commande : veuillez écrire la commande  "help" pour afficher la page aide'
fi


echo $WhereIAM
