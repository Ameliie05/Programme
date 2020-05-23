#!/bin/bash

concatenationAgePrenom() {

read -p  "quel est ton prenom :" nom

echo "le prénom  choisi est : $nom"
read -p " quel est ton age :" age
echo "l'age choisi est : $age"


pseudo="${nom} ${age}"
echo " votre pseudo est : ${pseudo} "

}

choix=("Pseudo aleatoire" "Pseudo a partir prenom + age" "quitter")

select choixUtilisateur in "${choix[@]}"
do
   case $choixUtilisateur in
       "Pseudo aleatoire")
           echo "vous avez choisi pseudo aleatoire"
           break
         ;;

       "Pseudo a partir prenom + age")
           echo " vous avez choisi pseudo a partir prenom + age"
           break
       ;;

       "quitter")
         break
       ;;

       *) echo "ERREUR CETTE OPTION N'EXISTE PAS $REPLY"
          break
           ;;
   esac
 done


