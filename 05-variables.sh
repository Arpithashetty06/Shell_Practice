#!/bin/bash

echo "Please enter your username:"
read -p "Username: " USERNAME   # visible input

echo "Please enter your password:"
read -s -p "Password: " PASSWORD  # hidden input
echo   # move to next line after silent input

echo "Username entered is: $USERNAME"
echo "Password entered is: $PASSWORD"
