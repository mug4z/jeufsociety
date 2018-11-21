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

WhereIAM="administration"

# Show Content
if [[ $Command == cd* ]]; then
  echo "Vous êtes dans le répertoire administration."
else
  echo "bin.txt"
  echo "boot.txt"
  echo "ini.txt"
  echo "lib.txt"
  echo "media.txt"
  echo "mnt.txt"
  echo "proc.txt"
  echo "run.txt"
  echo "tmp.txt"
  echo "var.txt"
fi
