#!/bin/bash

######### scripting /programming --- 1) Keep less lines more performance, 2) Readability, 3) DRY -- Do not repeat yourself -- TO reuse the code #########

####### Functions ------- takes some input and give some output

USERID=$(id -u)

if [ $USERID -ne 0 ] ; then
    echo "ERROR:: Please run this Script with ROOT Prilivileges"
    exit 1 ## failure is other than 0
if

VALIDATE() {  ### Function receive inputs through $1, $2, $3 ... args just like script args 
    if [ $1 -ne 0 ] ; then
        echo "ERROR::  Installation $2 is Failure"
    else
        echo "SUCCESS:: Installation $2  is Successfull"
    fi
           }

dnf install mysql -y
VALIDATE $? "Mysql"

dnf install nginx -y
VALIDATE $? "nginx"

dnf install python3 -y
VALIDATE $? "Python3"