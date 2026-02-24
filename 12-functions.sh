#!/bin/bash
#set -e
#set -x
USERID=$(id -u)

# Function to check root user
check_root() {
    if [ "$USERID" -ne 0 ]
    then
        echo "Please run this script as root"
        exit 1
    fi
}

# Function to install a package
install_package() {
    dnf list installed $1

    if [ $? -ne 0 ]
    then
        echo "$1 is not installed. Installing now..."
        dnf install $1 -y

        if [ $? -eq 0 ]
        then
            echo "$1 installed successfully"
        else
            echo "$1 installation failed"
            exit 1
        fi
    else
        echo "$1 is already installed"
    fi
}

# Calling functions
check_root
install_package git
install_package mysql
