
#!/bin/bash

# # Check if any input is provided
if [ "$#" -eq 0 ]; then # This to check if no input is given, it prints a message and exits.
	echo "Il manque les noms d'utilisateurs en argument - Fin du script"
        exit 1
fi

# variables
users="$*"
	
# users creation
for user in $users; do # This loop iterates over each username provided as an input.
	if id "$user" &> /dev/null; then # id is to check information about the given user and &> /dev/null is to redirect both standard output and standard error to /dev/null (in other words, whether the user exists, print nothing and continue)
		echo "L'utilisateur $user existe déja"
	else
		sudo useradd -m "$user" --shell /bin/bash # this is to create a user
		echo "$user:DogDog99" | sudo chpasswd # this is to create a password for the just created user
		echo "L'utilisateur $user a été créé"
	fi
done

exit 0
