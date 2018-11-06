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
#Fonction de commande



# Variables de couleur
# ----------------------------------------------------------------------
rougefonce='\e[0;31m'
vertfonce='\e[0;32m'
vertclair='\e[1;32m'
orange='\e[0;33m'
jaune='\e[1;33m'
bleufonce='\e[0;34m'
bleuclair='\e[1;34m'
violetfonce='\e[0;35m'
violetclair='\e[1;35m'
cyanfonce='\e[0;36m'
cyanclair='\e[1;36m'
grisclair='\e[0;37m'
blanc='\e[1;37m'
neutre='\e[0;m'
# ----------------------------------------------------------------------
# Variables de couleur

# Autres variables
# ----------------------------------------------------------------------
date=$(date +"%d/%m/%y - %H:%M:%S")
# ----------------------------------------------------------------------
# Autres variables

clear

echo -e "${rougefonce}                                                     ";
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
terminal() {
  ./testloop.sh
}

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
