#!/bin/bash

echo "All Variable passed to the script: $@"
echo "All Variable passed to the script: $*"
echo "Script name is : $0"
echo "Current directory is : $PWD"
echo "who is running this script : $USER"
echo "Home directory of user is : $HOME"
echo "PID of this script is : $$"
sleep 50 & ### Background process
echo "PID of last command in background is : $!"
