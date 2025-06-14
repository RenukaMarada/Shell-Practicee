#!/bin/bash

echo "Renu:: Hey Savi, did you complete the project?"
echo "Savi:: Hi Renu. Yes, I just submitted it."
echo "Renu:: That’s awesome, Savi! Need any help with documentation?"
echo "Savi:: Not really, Renu. I'm working on the shell script part now."

#---------------------------------------------------------------------------------------

# Assigning names using variables
Person1="Renu"
Person2="Savi"

echo "$Person1:: Hey $Person2, did you complete the project?"
echo "$Person2:: Hi $Person1. Yes, I just submitted it."
echo "$Person1:: That’s awesome, $Person2! Need any help with documentation?"
echo "$Person2:: Not really, $Person1. I'm working on the shell script part now."


#-----------------------------------------------------------------------------------------

# Taking names from command-line arguments
Person1=$1
Person2=$2

echo "$Person1:: Hey $Person2, did you complete the project?"
echo "$Person2:: Hi $Person1. Yes, I just submitted it."
echo "$Person1:: That’s awesome, $Person2! Need any help with documentation?"
echo "$Person2:: Not really, $Person1. I'm working on the shell script part now."

#------------------------------------------------------------------------------------------

# Prompting for username
echo "Please enter your email ID:"
read EMAIL

echo "Email entered: $EMAIL"

# Prompting for password securely
echo "Please enter your password:"
read -s PASSWORD

echo "Credentials received. Processing login..."

