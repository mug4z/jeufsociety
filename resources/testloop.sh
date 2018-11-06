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

while true ; do
print_help(){
  echo ""
  echo "help : affiche cette page d'aide"
  echo "cd   :  "

}
read -p "commande> " command ;
case $command in
  help ) print_help

    ;;
  *)
  echo 'Erreur commande : veuillez écrire la commande  "help" pour afficher la page aide'
  ;;
esac
done
