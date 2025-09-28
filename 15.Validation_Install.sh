#!/bin/bash

######### scripting /programming --- 1) Keep less lines more performance, 2) Readability, 3) DRY -- Do not repeat yourself -- TO reuse the code #########

####### Functions ------- takes some input and give some outpu

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run the script with ROOT Privilages "
    exit 1
fi

VALIDATE (){  #### fuctions receive  input through parameters ($1,$2 -- arguments) --- like Shell script arguments  
    if [ $1 -ne 0 ]; then
        echo "ERROR:: $2 Installation Failed"
    else 
        echo "SUCCESS:: $2 Installation Successful"
    fi 
           }

 dnf install mysql -y
 VALIDATE $? "Mysql"

 dnf install nginx -y
 VALIDATE $? "nginx"

 dnf install python3
 VALIDATE $? "Python3"