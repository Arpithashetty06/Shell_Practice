#!/bin/bash

# Run a command
echo "Today's date is:"
date

# Store command output in a variable
HOSTNAME=$(hostname)

# Print the stored output
echo "My system hostname is: $HOSTNAME"
