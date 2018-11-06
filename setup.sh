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

<<<<<<< HEAD
PWD=$(pwd)

source resources/environment_variable.sh



echo $VAR

=======
# Current Directory
PWD=$(pwd)

# Get Variables
source resources/environment_variables.sh

# Generate Terminal
>>>>>>> fae5452e69f9dbc8d691dc24aea09e2d61f82fe9
terminal() {
  $PWD/resources/testloop.sh
}

clear

<<<<<<< HEAD
echo -e "${rougefonce}                                                  ";
=======
# Banner
# ----------------------------------------------------------------------

echo -e "${rougefonce}                                                     ";
>>>>>>> fae5452e69f9dbc8d691dc24aea09e2d61f82fe9
echo "                                                                     ";
echo "███╗   ███╗██████╗        ██████╗  ██████╗ ██████╗  ██████╗ ████████╗";
echo "████╗ ████║██╔══██╗       ██╔══██╗██╔═══██╗██╔══██╗██╔═══██╗╚══██╔══╝";
echo "██╔████╔██║██████╔╝       ██████╔╝██║   ██║██████╔╝██║   ██║   ██║   ";
echo "██║╚██╔╝██║██╔══██╗       ██╔══██╗██║   ██║██╔══██╗██║   ██║   ██║   ";
echo "██║ ╚═╝ ██║██║  ██║██╗    ██║  ██║╚██████╔╝██████╔╝╚██████╔╝   ██║   ";
echo "╚═╝     ╚═╝╚═╝  ╚═╝╚═╝    ╚═╝  ╚═╝ ╚═════╝ ╚═════╝  ╚═════╝    ╚═╝   ";
echo "                                                                     ";
echo -e "                                                         ${neutre}";

# Introduction
# ----------------------------------------------------------------------

echo -e "${rougefonce}${date}
Mr. Robot :
${vertfonce}Hello friend,
Je me présente - je m'appelle Mr. Robot.
Afin d'atteindre mes objectifs, ton aide me sera précieuse.
Si tu n'acceptes pas de m'aider, toutes tes informations personnelles seront divulgées au grand public.
Je te laisse imaginer les désastres qui pourraient te tomber dessus.

Première étape est de t'introduire dans les serveurs de Coca-Cola.
Ne te pose pas de question, et exécute.

Aide-toi de la commande ${orange}help${vertfonce} pour commencer.${neutre}" | pv -qL 20

terminal
