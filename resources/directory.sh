#!/bin/sh
whereIAM=racine
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
