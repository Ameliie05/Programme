#!/bin/bash

# fonction pour concatener

concatenationAgePrenom() {

read -p  "quel est ton prenom :" nom
echo "le prénom  choisi est : $nom"
read -p " quel est ton age :" age
echo "l'age choisi est : $age"
pseudo="${nom} ${age}"
clear
echo " votre pseudo est : ${pseudo} "

}

# fonction pour le pseudo aleatoire

pseudoAleatoire() {

	read -p "quel est ton prenom :" prenom
nombre=`echo "$prenom" | wc -m `
clear
echo "votre pseudo aleatoire est : " 
cat /dev/urandom | tr -dc $prenom | fold -w ${1:-$nombre} | head -n 1

}


# on créer le tableau (Array) pour les choix 


choix=("Pseudo aleatoire" "Pseudo a partir prenom + age" "quitter")


# ici on créer le menu 
clear
echo "Bienvenue dans le premier programme créer par Amélie :D "
echo ""

select choixUtilisateur in "${choix[@]}"
do
   case $choixUtilisateur in
       "Pseudo aleatoire")
           pseudoAleatoire
           break
         ;;

       "Pseudo a partir prenom + age")
           concatenationAgePrenom
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
