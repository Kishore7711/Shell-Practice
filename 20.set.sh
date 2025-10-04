#!/bin/bash

set -e

## error (){
##    echo "There is an Error in $LINENO, Command is : $BASH_COMMAND"
##         }

trap 'echo "There is an Error in $LINENO, Command is : $BASH_COMMAND"' ERR

echo "hi hello welcome to AWS"

echo "before ERROR"

DKJFFDFIFDFJJ  #### here shell understand there is an error and signal is ERR

echo "after ERROR"
