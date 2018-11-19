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
  # Text
  source $PWD/history/chapter0.sh
  # Next Chapter
  ((CurrentChapter++))

# Chapitre 1 - Introducion
# ----------------------------------------------------------------------
elif [[ $command = "help" ]] && [[ $CurrentChapter = 1 ]]; then
  #statements
  echo "je suis beau"



else
  echo "love"
fi
