#!bin/bash
# https://ineumann.developpez.com/tutoriels/linux/exercices-shell/
let "i = 1"
let "max = 3"
let "somme = 0"
while [ $i -le $max ] 
do
read -p "Entrez note $i/$max  " note
	 if [ $note -lt 0 ] || [ $note -gt 20 ] 
	 then
	    read -p "Entrez note entre 0 et 20" $note
	 fi
let "somme += note"
let "++i"
done

let "moyenne = $somme/$max"

        if [ $moyenne -lt 10 ] 
        then
                echo "MOYENNE: $moyenne, MENTION: echec"
        elif [ $moyenne -lt 12  ]
        then
                echo "MOYENNE: $moyenne, MENTION: PASSABLE"
        elif [ $moyenne -lt 14  ]
        then
                echo "MOYENNE: $moyenne, MENTION: AB"
        elif [ $moyenne -lt 16 ]
        then
                echo "MOYENNE: $moyenne, MENTION: Bien"
        elif [ $moyenne -le 20 ]
        then
                echo "MOYENNE: $moyenne, MENTION: Très Bien"
        elif [ $moyenne=[a-z] ]
        then
                echo "ERREUR"
	else
		echo "La moyenne doit être comprise entre 0 et 20"
	fi





