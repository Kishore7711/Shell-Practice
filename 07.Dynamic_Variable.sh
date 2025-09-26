#!/bin/bash

######## how do you run a command inside shell script and take the ourput ##########3

####### script start time
###### script end time
##### executed in end time - start time
#### VAR_NAME=$(command)

### DATE=$(date)

##echo "Time Stamp is : $DATE"

START_TIME=$(date +%s)  ## +%s is to get time in seconds

sleep 10

END_TIME=$(date +%s)

TOTAL_TIME=$(($END_TIME - $START_TIME))

echo "Script executed in : $TOTAL_TIME seconds"


