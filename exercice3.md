# Donne une ligne de commande bash qui permet de lister la liste des utilisateurs d'un système Linux
cut -d: -f1 /etc/passwd

# Quelle commande bash permet de changer les droits du fichier myfile en rwxr—r-- ?
chmod 744 myfile

# Quelle est la différence entre une variable d'environnement et une variable locale dans un script Bash, et comment pouvez-vous les définir et les utiliser ?
Variables d'environnement : accessibles à tous les processus enfants du processus où elles ont été définies
Pour définir et utiliser une variable d'environnement, on fait la commande:
export Variable=value
$Variable (use $)
Variables locales : accessibles uniquement dans le script ou le bloc de code où elles ont été définies
Pour définir et utiliser une variable local, on fait
Variable=value (withot adding "export")
we use also $Variable

# Expliquez comment fonctionne la structure de contrôle "if" dans Bash. Donnez un exemple concret de son utilisation pour prendre une décision basée sur une condition dans un script Bash.
You can utilize an if statement with one or many conditions. It begins with "if" and ends "fi"; here is an exemple to demonstrate its use

#!/bin/bash
variable=9
if [ $variable -lt 9 ]; then

    echo "It is a one digit number"
else
    echo "It is a two digit number"
fi


# Donne la(les) ligne(s) de commande(s) bash pour afficher le texte suivant 
echo 'Malgré le prix élevé de 100$, il a dit "Bonjour !" au vendeur :'
echo '- "Bonjour est-ce que ce clavier fonctionne bien ?"'
echo '- "Evidemment ! On peut tout écrire avec, que ce soit des pipe | ou bien des backslash \\ !"'
echo '- "Même des tildes ~ ?"'
echo '- "Evidemment !"'

# Q 6
fg %1

# Quels matériels réseaux sont sur la couche 2 et la couche 3 du modèle OSI ? Donne leurs spécificités.
couche 2: Switch, Pont 
couche 3: Routeur, Gateway

# Quels sont les équivalent PowerShell des commandes bash cd, cp, mkdir, ls.
cd == Set-Location
cp == Copy-Item
mkdir == New-Item
ls == ls

# Dans la trame ethernet, qu'est-ce que le payload ?
It is the data carried by the farme

# Pourquoi les classes IP sont remplacées par le CIDR ?
Inefficacité d'utilisation des adresses IP + Flexibilité de CIDR + Simplification du routage (CIDR permet l'agrégation des routes réduisant la taille des tables de routag)+ CIDR permet une gestion plus fine des adresses IP et CIDR peut être adapté avec les nouvelles tech.
