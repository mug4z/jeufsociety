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

# First Launch Terminal
# ----------------------------------------------------------------------
read -p  "commande> " command ;

while true ; do

  # Show Commands
  print_help(){
    echo "----------------------------------------------------------------------"
    echo "help                  : Affiche cette page d'aide."
    echo "cd [nom du dossier]   : Permet de changer de répertoire."
    echo "connect [adresse IP]  : Permet de se connecter à un serveur."
    echo "cat [nom de fichier]  : Affiche le contenu du fichier."
    echo "list ip addr          : Liste les addresses IP connues par Mr. Robot."
    echo "ls [nom du dossier]   : Affiche le contenue du répertoire."
    echo "----------------------------------------------------------------------"
  }

  # Test des print
  print_cd(){
    echo "cd"
  }
  print_connect(){
    echo "connect"
  }
  print_cat(){
    echo "cat"
  }
  print_listaddrip(){
    echo "Recherche:"
  }
  print_ls(){
    echo "ls"
  }

  # Check the command
  case $command in
    help )
      print_help
      ;;
    cd )
      print_cd
      ;;
    connect )
      print_connect
      ;;
    cat )
      print_cat
      ;;
    list )
      print_listaddrip
      ;;
    ls )
      print_ls
      ;;
    *)
      echo 'Erreur commande : veuillez écrire la commande  "help" pour afficher la page aide'
    ;;
  esac

  # Get the file : chapters.sh
  chapert () {
    $PWD/resources/chapters.sh
  }

  # Show Current Chapter
  chapert

  # Launch Terminal Again
  read -p  "commande> " command ;

done
