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

# Check Command
CheckCommand="cd\s"
CheckCommandCat="cat\s"

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
    echo "Erreur : Dossier introuvable"
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
elif [[ $WhereIAM = "recipe" ]]; then
    source $PWD/environment/recipe/recette.sh
  # Show Root
  elif [[ $WhereIAM = "root"  ]]; then
    source $PWD/environment/root/root.sh
  fi

# View Files
elif [[ $Command =~ $CheckCommandCat ]]; then
  # Administration's Files
  if [[ $WhereIAM == "administration" ]]; then
    if [[ $Command == "cat bin.txt" ]]; then
      source $PWD/environment/administration/bin.sh
    elif [[ $Command == "cat boot.txt" ]]; then
        source $PWD/environment/administration/boot.sh
    elif [[ $Command == "cat init.txt" ]]; then
        source $PWD/environment/administration/init.sh
    elif [[ $Command == "cat lib.txt" ]]; then
        source $PWD/environment/administration/lib.sh
    elif [[ $Command == "cat media.txt" ]]; then
        source $PWD/environment/administration/media.sh
    elif [[ $Command == "cat mnt.txt" ]]; then
        source $PWD/environment/administration/mnt.sh
    elif [[ $Command == "cat proc.txt" ]]; then
        source $PWD/environment/administration/proc.sh
    elif [[ $Command == "cat run.txt" ]]; then
        source $PWD/environment/administration/run.sh
    elif [[ $Command == "cat tmp.txt" ]]; then
        source $PWD/environment/administration/tmp.sh
    elif [[ $Command == "cat var.txt" ]]; then
        source $PWD/environment/administration/var.sh
    # Error File
    else
      echo "Erreur : Fichier introuvable"
    fi
  # Recipe's Files
  elif [[ $WhereIAM == "recipe" ]]; then
    if [[ $Command == "cat coca-cola.txt"  ]]; then
      source $PWD/environment/recipe/coca-cola.sh
    else
      echo "Erreur : Fichier introuvable"
    fi
  # Root's Files
  elif [[ $WhereIAM == "root" ]]; then
    if [[ $Command == "cat dechiffrement.txt" ]]; then
      source $PWD/environment/root/dechiffrement.sh
    elif [[ $Command == "cat password.txt" ]]; then
      source $PWD/environment/root/password.sh
    # Error File
    else
      echo "Erreur : Fichier introuvable"
    fi
  # Error File
  else
    echo "Erreur: Fichier introuvable"
  fi # End of CheckCommandCat

# Error Command
else
  echo 'Erreur commande : veuillez écrire la commande "help" pour afficher la page aide'
fi # End Check Directory
