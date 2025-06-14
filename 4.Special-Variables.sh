#!/bin/bash

echo "All variables passed to the script: $@"
# ➤ Lists all the arguments passed to the script

echo "Number of variables passed: $#"
# ➤ Shows the count of arguments

echo "Script name: $0"
# ➤ Displays the name of the script

echo "Current working directory: $PWD"
# ➤ Prints the present working directory

echo "Home directory of current user: $HOME"
# ➤ Displays the home path of the current user

echo "PID of the script executing now: $$"
# ➤ Shows the current script’s process ID

sleep 100 &
# ➤ Runs a sleep command in the background

echo "PID of last background command: $!"
# ➤ Gets the PID of the last background process (sleep)