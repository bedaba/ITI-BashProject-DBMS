#!/bin/bash
echo Welcome to iti DB we are going to create a new DB!
echo What Should I Call The New DB? and please be advised that you can only name the DB to have character from A to Z and numbers only!
read dbname
if [[ $dbname =~ ^[a-zA-Z0-9]+$ ]]
then

if [[ -d $dbname ]] 
then
echo DB already Exsits!
./createDB.sh
else
mkdir $dbname
echo done creating your DB!!!
./main.sh
fi

else
echo please enter a valid name!
./createDB.sh
fi

# This script is a simple command-line interface that allows the user to create a new database. 
# When the script is run, it displays a welcome message and prompts the user to enter a name for the new database. 
# The user's input is stored in the variable dbname using the read command.

# The script then uses a regular expression to check if the user's input is valid, i.e. 
# if it only contains characters from A to Z and numbers. This is done using the [[ $dbname =~ ^[a-zA-Z0-9]+$ ]] command.
#  If the input is valid, the script checks if the directory with the entered name already exists using the [[ -d $dbname ]] command.

# If the directory already exists, the script displays an error message
#  and re-runs itself using ./createDB.sh. If the directory does not exist,
#   it creates a new directory with the entered name using the mkdir command.
#    After that it display a success message and call the main menu ./main.sh script.

# If the user's input is not valid, the script displays an error message and re-runs itself using ./createDB.sh.