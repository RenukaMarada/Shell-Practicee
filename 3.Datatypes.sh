#!/bin/bash

# ----------------------------------
# 1. 🔤 String
# ----------------------------------
Name="Renu"
City="Vizag"

echo "Welcome $Name to $City!"

# ----------------------------------
# 2. 🔢 Integer (Arithmetic Operations)
# ----------------------------------
num1=12
num2=4

sum=$((num1 + num2))
sub=$((num1 - num2))
mul=$((num1 * num2))
div=$((num1 / num2))

echo "Sum: $sum"
echo "Subtraction: $sub"
echo "Multiplication: $mul"
echo "Division: $div"

# ----------------------------------
# 3. 📋 Array
# ----------------------------------
Technologies=("Linux" "Git" "Docker" "Kubernetes")

echo "First technology: ${Technologies[0]}"
echo "Second technology: ${Technologies[1]}"
echo "All technologies: ${Technologies[@]}"

# ----------------------------------
# 4. 📅 Command Substitution
# ----------------------------------
current_user=$(whoami)
current_date=$(date +%F)
current_time=$(date +%T)

echo "Current User: $current_user"
echo "Today's Date: $current_date"
echo "Current Time: $current_time"

# ----------------------------------
# 5. ✅ Boolean Simulation using Condition
# ----------------------------------
echo "Checking if num1 is greater than num2..."

if [ $num1 -gt $num2 ]; then
    echo "True: $num1 is greater than $num2"
else
    echo "False: $num1 is not greater than $num2"
fi
