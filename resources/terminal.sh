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

while true ; do

print_help(){
  echo ""
  echo "help                         :  affiche cette page d'aide"
  echo "cd nom_de_fichier     : Permet d'aller dans un autre fichier  "
  echo "connect addresse_ip  : Se connect a l'addresse ip "
  echo "cat nom_de_fichier    : affiche le contenue d'un fichier"
  echo "list addr ip     : liste les addresse disponibles"
  echo  "ls nom_de_fichier    : afiche le contenue du fichier"
  echo "------------------------------------------------------------------"
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


read -p  "commande> " command ;
case $command in
  help ) print_help
    ;;
  cd ) print_cd
    ;;
  connect ) print_connect
   ;;
   cat ) print_cat
   ;;
   list ) print_listaddrip
   ;;
   ls ) print_ls
   ;;
  *)
  echo 'Erreur commande : veuillez écrire la commande  "help" pour afficher la page aide'
  ;;
esac
done
