#!/bin/bash
#set -e
#set -x

#simple example
echo -e "\e[31mThis is Red\e[0m"
echo -e "\e[32mThis is Green\e[0m"
echo -e "\e[33mThis is Yellow\e[0m"
echo
# Using Variable
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
RESET="\e[0m"
echo
echo -e "${RED}Error Message${RESET}"
echo -e "${GREEN}Success Message${RESET}"
echo -e "${YELLOW}Warning Message${RESET}"
echo
#for bold colors
echo -e "\e[1;31mBold Red\e[0m"
echo
echo -e "\nend of script"


