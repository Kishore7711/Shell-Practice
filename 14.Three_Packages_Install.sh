#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please Take the ROOT Privilages "
    exit 1
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
   echo "ERROR:: Mysql Instalation is Failure"
   exit 1
else
    echo "SUCESS:: Mysql Instalation is Sucessfull"
fi

dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "ERROR:: nginx Instalation is Failure"
    exit 1
else
    echo "SUCESS:: nginx Instalation is Sucessfull"
fi

dnf install python3 gcc python3-devel -y

if [ $? -ne 0 ]; then
    echo "ERROR:: Python3 Instalation is Failure"
    exit 1
else
    echo "SUCESS:: Python3 Instalation is Sucessfull"
fi