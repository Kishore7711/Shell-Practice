#!/bin/bash

######### alogorithm or thinking is important , not code at this stage, jest plain english #########

####### if it is raining
#######      take umbrella
####### else  
#######      take sunglasses

### ! is negative

######## if (expression) {  ## false * false = true
###########  these statements execute if expression is true
## }
#### else {
###########  these statements execute if expression is false
### }


#### in programming

#### if [ condition ]; then
####    commands to be executed if condition is true
#### else
######## commands to be executed if condition is false
##### fi

### in programming we use -eq, -ne, -lt -- less than, -le, -gt, -ge for comparison

NUMBER=$1

if [ $NUMBER -lt 20 ]; then
    echo "Given number $NUMBER is less than 20"
else
    echo "Given number $NUMBER is greater than or equal to 20"
fi
