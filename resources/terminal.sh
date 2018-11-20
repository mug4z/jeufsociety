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

# Get the file : chapters.sh
chapter () {
  source $PWD/resources/chapters.sh
}

# Launch the History
# ----------------------------------------------------------------------
chapter

# Launch Terminal
# ----------------------------------------------------------------------
read -p  "commande> " Command ;

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

  # Show IP Address
  print_listipaddr(){
    echo "----------------------------------------------------------------------"
    echo "250.239.213.29  : Doctorist"
    echo "7.77.21.80      : Sportvalve"
    echo "209.178.202.85  : Coinplace"
    echo "149.41.208.106  : Blockchain planet"
    echo "20.25.22.19     : Lerola"
    echo "73.94.128.100   : Spotify"
    echo "172.30.128.224  : CocaCola"
    echo "125.60.0.242    : Cocalis"
    echo "221.117.71.9    : Lamborghini"
    echo "----------------------------------------------------------------------"
  }

  # Show connection
  print_connect(){
    for ((i=0 ; 100 - $i ; i++))
      do echo -ne '[                              ]' '('$i'%)\r'

      if [[ $i > 98 ]]; then
        echo -ne '[==============================] (100%)\r'
      elif [[ $i > 90 ]] && [[ $i < 97 ]]; then
        echo -ne '[===========================   ]' '('$i'%)\r'
      elif [[ $i > 80 ]] && [[ $i < 89 ]]; then
        echo -ne '[========================      ]' '('$i'%)\r'
      elif [[ $i > 70 ]] && [[ $i < 79 ]]; then
        echo -ne '[=====================         ]' '('$i'%)\r'
      elif [[ $i > 60 ]] && [[ $i < 69 ]]; then
        echo -ne '[==================            ]' '('$i'%)\r'
      elif [[ $i > 50 ]] && [[ $i < 59 ]]; then
        echo -ne '[===============               ]' '('$i'%)\r'
      elif [[ $i > 40 ]] && [[ $i < 49 ]]; then
        echo -ne '[============                  ]' '('$i'%)\r'
      elif [[ $i > 30 ]] && [[ $i < 39 ]]; then
        echo -ne '[=========                     ]' '('$i'%)\r'
      elif [[ $i > 20 ]] && [[ $i < 29 ]]; then
        echo -ne '[======                        ]' '('$i'%)\r'
      elif [[ $i > 10 ]] && [[ $i < 19 ]]; then
        echo -ne '[===                           ]' '('$i'%)\r'
      fi

      sleep 0.05s
    done
    echo -ne '\n'
  }

  print_cd(){
    echo "cd"
  }

  print_cat(){
    echo "cat"
  }
  print_ls(){
    echo "ls"
  }

  # Check the command
  case $Command in
    help )
      print_help
      ;;
    cd )
      print_cd
      ;;
    connect* )
      if [[ $Command == connect* ]] && [[ $CommandConnect = "TurnOn" ]]; then
        print_connect
      else
        echo "La command n'est pas disponible actuellement."
      fi
      ;;
    cat )
      print_cat
      ;;
    "list ip addr" )
      print_listipaddr
      ;;
    ls )
      print_ls
      ;;
    *)
      echo 'Erreur commande : veuillez écrire la commande  "help" pour afficher la page aide'
    ;;
  esac

  # Show Current Chapter
  chapter

  # Launch Terminal Again
  read -p  "commande> " Command ;

done
