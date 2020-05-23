#!/bin/bash



read -p  "quel est ton prenom :" nom

echo "le prénom  choisi est : $nom"
read -p " quel est ton age :" age
echo "l'age choisi est : $age"


pseudo="${nom} ${age}"
echo " votre pseudo est : ${pseudo} "


