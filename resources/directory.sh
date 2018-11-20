#!/bin/sh
whereIAM=racine
admin=administration
recette=recette
racine=racine
if [[ $whereIAM = "$racine" ]]; then
  print_ls(){
    echo "root"
    echo "administration"
    echo "recette"
  }
elif [[ $whereIAM = "$admin" ]]; then
  source source $PWD/environement/administration.sh
fi
