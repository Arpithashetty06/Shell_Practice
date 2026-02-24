#!/bin/bash

USERID=$(id -u)

if [ "$USERID" -ne 0 ]
then
    echo "Please run this script with root privileges"
    exit 1
fi
echo 
echo
# Check Git
dnf list installed git

if [ $? -ne 0 ]
then
    echo "Git is not installed. Installing now..."
    dnf install git -y

    if [ $? -ne 0 ]
    then
        echo "Git installation failed"
        exit 1
    else
        echo "Git installation successful"
    fi
else
    echo "Git is already installed"
fi
echo
echo
# Check MySQL
dnf list installed mysql

if [ $? -ne 0 ]
then
    echo "MySQL is not installed. Installing now..."
    dnf install mysql -y

    if [ $? -ne 0 ]
    then
        echo "MySQL installation failed"
        exit 1
    else
        echo "MySQL installation successful"
    fi
else
    echo "MySQL is already installed"
fi
