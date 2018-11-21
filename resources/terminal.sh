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

# Get the file directory.sh
directory (){
  source $PWD/resources/directory.sh
}

# Launch the History
# ----------------------------------------------------------------------
chapter

# Launch Terminal
# ----------------------------------------------------------------------
Path="commande> "
read -p  $Path Command ;

while true ; do

  # Show Commands
  print_help1(){
    echo "----------------------------------------------------------------------"
    echo "help                  : Affiche cette page d'aide."
    echo "connect [adresse IP]  : Permet de se connecter à un serveur."
    echo "list ip addr          : Liste les addresses IP connues par Mr. Robot."
    echo "----------------------------------------------------------------------"
  }

  print_help2(){
    echo "----------------------------------------------------------------------"
    echo "help                  : Affiche cette page d'aide."
    echo "cat [nom de fichier]  : Affiche le contenu du fichier."
    echo "cd [nom du dossier]   : Permet de changer de répertoire."
    echo "cd ~                  : Permet d'aller dans le répertoire racine."
    echo "connect [adresse IP]  : Permet de se connecter à un serveur."
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
    echo "172.30.128.224  : Coca-Cola"
    echo "125.60.0.242    : Cocalis"
    echo "221.117.71.9    : Lamborghini"
    echo "----------------------------------------------------------------------"
  }

  # Show Connection
  print_connect(){
    for ((i=0 ; 100 - $i ; i++))
      do echo -ne '[                              ]' '('$i'%)\r'

      # Show Percentage
      if [[ $i -gt 98 ]]; then
        echo -ne '[==============================] (100%)\r'
      elif [[ $i -gt 90 ]] && [[ $i -lt 97 ]]; then
        echo -ne '[===========================   ] ('$i'%)\r'
      elif [[ $i -gt 80 ]] && [[ $i -lt 89 ]]; then
        echo -ne '[========================      ] ('$i'%)\r'
      elif [[ $i -gt 70 ]] && [[ $i -lt 79 ]]; then
        echo -ne '[=====================         ] ('$i'%)\r'
      elif [[ $i -gt 60 ]] && [[ $i -lt 69 ]]; then
        echo -ne '[==================            ] ('$i'%)\r'
      elif [[ $i -gt 50 ]] && [[ $i -lt 59 ]]; then
        echo -ne '[===============               ] ('$i'%)\r'
      elif [[ $i -gt 40 ]] && [[ $i -lt 49 ]]; then
        echo -ne '[============                  ] ('$i'%)\r'
      elif [[ $i -gt 30 ]] && [[ $i -lt 39 ]]; then
        echo -ne '[=========                     ] ('$i'%)\r'
      elif [[ $i -gt 20 ]] && [[ $i -lt 29 ]]; then
        echo -ne '[======                        ] ('$i'%)\r'
      elif [[ $i -gt 10 ]] && [[ $i -lt 19 ]]; then
        echo -ne '[===                           ] ('$i'%)\r'
      fi
      sleep 0.05s

    done

    # Result
    echo -ne '\n'
  }

  # Change Directory
  print_cd(){
    directory
  }

  print_cat(){
    echo "cat"
  }

  print_ls(){
    directory
  }

  # Check the Current Command
  case $Command in

    help )
      # Which Terminal to Use
      if [[ $CurrentChapter -le 2 ]]; then
        print_help1
      else
        print_help2
      fi
      ;;

    cd* )
      # Check the Current Chapter
      if [[ $CurrentChapter -eq 3 ]]; then
        print_cd
      else
        echo 'Erreur commande : veuillez écrire la commande "help" pour afficher la page aide'
      fi
      ;;

    connect* )
      CheckIPFormat="connect\s[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}"
      # Command Active or Not
      if [[ $CommandConnect = "TurnOn" ]]; then
        # Check Address IP Format
        if [[ $Command =~ $CheckIPFormat ]]; then
          # Check the Right Address
          if [[ $Command == "connect 172.30.128.224" ]]; then
            print_connect
          else
            echo "La connexion est impossible."
          fi
        else
          echo "L'addresse IP est invalide."
        fi
      else
        echo "La command n'est pas disponible actuellement."
      fi
      ;;

    cat* )
      # Check the Current Chapter
      if [[ $CurrentChapter -eq 3 ]]; then
        print_cd
      else
        echo 'Erreur commande : veuillez écrire la commande "help" pour afficher la page aide'
      fi
      ;;
    "list ip addr" )
      print_listipaddr
      ;;

    ls* )
      # Check the Current Chapter
      if [[ $CurrentChapter -eq 3 ]]; then
        print_ls
      else
        echo 'Erreur commande : veuillez écrire la commande "help" pour afficher la page aide'
      fi
      ;;

    * )
      echo 'Erreur commande : veuillez écrire la commande "help" pour afficher la page aide'
    ;;
  esac

  # Show Current Chapter
  chapter

  # Launch Terminal Again
  read -p  $Path Command ;

done
