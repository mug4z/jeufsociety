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
