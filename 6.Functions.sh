#!/bin/bash

# Function to display a greeting message
greet_user() {
    echo "Hello, $1! Welcome to shell scripting."
}

# Function to check if a number is even or odd
check_even_odd() {
    local num=$1
    if [ $((num % 2)) -eq 0 ]; then
        echo "$num is Even"
    else
        echo "$num is Odd"
    fi
}

# Function to calculate factorial
factorial() {
    local n=$1
    local fact=1
    for (( i=1; i<=n; i++ ))
    do
        fact=$((fact * i))
    done
    echo "Factorial of $n is $fact"
}

# MAIN SCRIPT

echo "Enter your name:"
read name
greet_user "$name"

echo "Enter a number to check even/odd:"
read number
check_even_odd $number

echo "Enter a number to calculate factorial:"
read fact_input
factorial $fact_input

#--------------------------------------------------------

#!/bin/bash

USERID=$(id -u)

CHECK_ROOT() {
    if [ $USERID -ne 0 ]; then
        echo "Please run this script with root priveleges"
        exit 1
    fi
}

VALIDATE() {
    if [ $1 -ne 0 ]; then
        echo "$2 is...FAILED"
        exit 1
    else
        echo "$2 is...SUCCESS"
    fi
}

CHECK_ROOT

dnf list installed git

if [ $? -ne 0 ]; then
    echo "Git is not installed, going to install it.."
    dnf install git -y
    VALIDATE $? "Installing Git"
else
    echo "Git is already installed, nothing to do.."
fi

dnf list installed mysql

if [ $? -ne 0 ]; then
    echo "MySQL is not installed...going to install"
    dnf install mysql -y
    VALIDATE $? "Installing MySQL"
else
    echo "MySQL is already installed..nothing to do"
fi

#-------------------------------------------------------------------

# # Get user ID
# USERID=$(id -u)

# # Function to check if user is root
# CHECK_ROOT() {
#     if [ $USERID -ne 0 ]; then
#         echo "Please run this script as root"
#         exit 1
#     fi
# }

# # Function to validate previous command
# VALIDATE() {
#     if [ $1 -ne 0 ]; then
#         echo "$2 ... FAILED"
#         exit 1
#     else
#         echo "$2 ... SUCCESS"
#     fi
# }

# # Function to create user if not exists
# CREATE_USER() {
#     local USERNAME=$1
#     id $USERNAME &>/dev/null
#     if [ $? -ne 0 ]; then
#         useradd $USERNAME
#         VALIDATE $? "Creating user $USERNAME"
#     else
#         echo "ℹ️ User $USERNAME already exists"
#     fi
# }

# # Function to create group if not exists
# CREATE_GROUP() {
#     local GROUPNAME=$1
#     getent group $GROUPNAME &>/dev/null
#     if [ $? -ne 0 ]; then
#         groupadd $GROUPNAME
#         VALIDATE $? "Creating group $GROUPNAME"
#     else
#         echo "ℹ️ Group $GROUPNAME already exists"
#     fi
# }

# # Function to check and install a package
# INSTALL_PACKAGE() {
#     local PACKAGE=$1
#     dnf list installed $PACKAGE &>/dev/null
#     if [ $? -ne 0 ]; then
#         echo "$PACKAGE is not installed. Installing..."
#         dnf install $PACKAGE -y &>/dev/null
#         VALIDATE $? "Installing $PACKAGE"
#     else
#         echo "$PACKAGE is already installed"
#     fi
# }

# # MAIN
# CHECK_ROOT

# # Call functions
# CREATE_USER devopsuser
# CREATE_GROUP devopsgroup

# INSTALL_PACKAGE wget
