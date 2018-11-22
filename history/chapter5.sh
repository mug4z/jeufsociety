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

# Get Variables
source $PWD/resources/variables.sh

clear

# Chapitre 5 - THE END
# ----------------------------------------------------------------------

# Show Text
echo -e "${rougefonce}                                              ";
echo "                                                              ";
echo "███████╗███████╗ ██████╗  ██████╗██╗███████╗████████╗██╗   ██╗";
echo "██╔════╝██╔════╝██╔═══██╗██╔════╝██║██╔════╝╚══██╔══╝╚██╗ ██╔╝";
echo "█████╗  ███████╗██║   ██║██║     ██║█████╗     ██║    ╚████╔╝ ";
echo "██╔══╝  ╚════██║██║   ██║██║     ██║██╔══╝     ██║     ╚██╔╝  ";
echo "██║     ███████║╚██████╔╝╚██████╗██║███████╗   ██║      ██║   ";
echo "╚═╝     ╚══════╝ ╚═════╝  ╚═════╝╚═╝╚══════╝   ╚═╝      ╚═╝   ";
echo "                                                              ";
echo "------------------------- Fin du jeu -------------------------";
echo -e "                                                  ${neutre}";

# Close the Game
exit