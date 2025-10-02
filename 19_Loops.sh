#!/bin/bash

##### for i in {1..30}
### do 
    ### echo $i 

### done

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"  #### N for Normal Color

LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$(echo "19_Loops.sh" | cut -d "." -f1)
LOGS_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"

mkdir -p $LOGS_FOLDER
echo "Script Exectution Started at : $(date)" | tee -a $LOGS_FILE


if [ $USERID -ne 0 ]; then
    echo -e "$R ERROR:: $N Please run this script with $B ROOT Prilivages $N" | tee -a $LOGS_FILE
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ] ; then 
        echo -e "$R ERROR:: $N $2 Installation $R Failed $N" | tee -a $LOGS_FILE
    else
        echo -e "$G SUCCESS:: $N $2 Installation $G Successful $N" | tee -a $LOGS_FILE
    fi
         }


    ### $@ --- all the arguments passed to the script

    ###### for package in $@
    ###### do
    #####    echo package is $package
    ##### done

for package in $@
do
   #### check the package is already installed or not
   dnf list installed $package &>>$LOGS_FILE

   #### if exit status is 0, already installed... -ne 0 need to install it now
   if [ $? -ne 0 ]; then #### $0 is exit status of last executed command
      dnf install $package -y &>>$LOGS_FILE
      VALIDATE $? "$package"
      echo "----------------------------------------" &>>$LOGS_FILE
      echo &>>$LOGS_FILE
   else
      echo -e "$package is already exist .... $Y SKIPPING $N" | tee -a $LOGS_FILE
    fi
done