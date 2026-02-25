#!/bin/bash   # This tells the system to run this script using bash

# Get current user ID (0 means root user)
USERID=$(id -u)

# Colors for output
R="\e[31m"   # Red color
G="\e[32m"   # Green color
N="\e[0m"    # Reset color

# Function to check if script is run as root
CHECK_ROOT(){
    # If user ID is not 0 (not root)
    if [ $USERID -ne 0 ]
    then
        echo "Please run this script with root privileges"
        exit 1   # Stop the script
    fi
}

# Function to check if previous command was success or failure
VALIDATE(){
    # $1 → exit status (0 means success)
    # $2 → message (like Installing git)

    if [ $1 -ne 0 ]
    then
        echo -e "$2 is... $R FAILED $N"
        exit 1
    else
        echo -e "$2 is... $G SUCCESS $N"
    fi
}

# Call root checking function
CHECK_ROOT

# Loop through all packages passed as arguments
# Example: sh script.sh git mysql nginx
for package in $@   # $@ means all arguments
do
    # Check if package is already installed
    dnf list installed $package

    # $? gives exit status of previous command
    if [ $? -ne 0 ]
    then
        echo "$package is not installed, going to install it.."

        # Install the package
        dnf install $package -y

        # Check if installation was successful
        VALIDATE $? "Installing $package"
    else
        echo "$package is already installed.. nothing to do"
    fi
done