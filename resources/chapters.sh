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

# Chapitre 0 - Introducion
# ----------------------------------------------------------------------
if [[ -z $CurrentChapter ]]; then
  # Statements
  source $PWD/history/chapter0.sh
  # Next Chapter
  ((CurrentChapter++))

# Chapitre 1 - Introducion
# ----------------------------------------------------------------------
elif [[ $Command = "help" ]] && [[ $CurrentChapter = 1 ]]; then
  # Statements
  source $PWD/history/chapter1-1.sh
  # Next Chapter
  ((SubCurrentChapter++))

elif [[ $Command = "list ip addr" ]] && [[ $SubCurrentChapter = 1 ]]; then
  # Statements
  source $PWD/history/chapter1-2.sh
  # Next Chapter
  ((CurrentChapter++))
  ((SubCurrentChapter++))

# Chapitre 2 - Bienvenu chez Coca-Cola
# ----------------------------------------------------------------------
# Allow to use the command : connect [adresse IP]
CommandConnect="TurnOn"
elif [[ $Command = "connect 172.30.128.224" ]] && [[ $CurrentChapter = 2 ]]; then
  # Statements
  source $PWD/history/chapter2.sh
  CommandConnect="TurnOff"
  #Where Start in Coca-Cola Servers
  WhereIAM="racine"
  Path="coca-cola/racine>"
  # Next Chapter
  ((CurrentChapter++))

# Chapitre 3 - Que la balade commance
# ----------------------------------------------------------------------
elif [[ $Command = "ls" ]] && [[ $CurrentChapter = 3 ]] && [[ $WhereIAM = "recipe" ]]; then
  # Statements
  source $PWD/history/chapter3.sh
  # Next Chapter
  ((CurrentChapter++))

elif [[ $Command = "cat coca-cola.txt" ]] && [[ $CurrentChapter = 3 ]] && [[ $WhereIAM = "recipe" ]]; then
  # Statements
  source $PWD/history/chapter3.sh
  # Next Chapter
  ((CurrentChapter++))

# Chapitre 4 - Dernière étape
# ----------------------------------------------------------------------
elif [[ $Password = "Ckbm322Fd2RX" ]] && [[ $CurrentChapter = 4 ]]; then
  # Statements
  source $PWD/history/chapter4.sh
  # Next Chapter
  ((CurrentChapter++))

# Chapitre 5 - THE END
# ----------------------------------------------------------------------
elif [[ $Command = "fsociety" ]] && [[ $CurrentChapter = 5 ]]; then
  # Statements
  source $PWD/history/chapter5.sh
fi
