#!/bin/bash
echo Welcome to bedaba DB!
PS3="Please Choose a Number: "
select item in "Create DB" "List DB" "Connect to DB" "Drop DB"
do
case $REPLY in
1)./createDB.sh
exit;;
2) ./listDB.sh
exit;;
3) ./connectDB.sh
exit;;
4) ./dropDB.sh
exit;;
*) echo "please try again and enter only numbers from 1 to 4!";;
esac

done

# # This script is a simple command-line interface that allows
#  the user to interact with a PostgreSQL database. 
#  When the script is run, it displays a welcome message,
#   followed by a menu of options for the user to choose from.
#    The menu is presented using the select command and the PS3 variable is used to set the prompt message.

# #     "Create DB": This option runs the createDB.sh script, which creates a new database.
# #     "List DB": This option runs the listDB.sh script, which lists all available databases.
# #     "Connect to DB": This option runs the connectDB.sh script, which connects to an existing database.
# #     "Drop DB": This option runs the dropDB.sh script, which drops (deletes) an existing database.

# # The case statement is used to handle the user's selection. If the user enters a number that is not between 1 and 4,
#  the script displays an error message and prompts the user to try again. 
#  The exit command is used to exit the script after the selected option has been executed.