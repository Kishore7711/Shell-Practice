#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"   ### N for Normal

USERID=$(id -u)

if [ $USERID -ne 0 ] ; then
    echo -e "$R ERROR:: Please run this script with ROOT Privilages $N"
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ] ; then
        echo -e "$R ERROR:: $2 Installation Failed $N"
    else
        echo -e "$G SUCCESS:: $2 Installation Successful $N"
    fi
          }

dnf list installed mysql
####  install if it is not found
if [ $? -ne 0 ]; then
dnf install mysql -y
VALIDATE $? "Mysql"
else
    echo -e "Mysql is already exist .... $Y SKIPPING $N"
fi

dnf list installed nginx
if [ $? -ne 0 ] ; then
dnf install nginx -y
VALIDATE $? "nginx"
else
    echo -e "Nginx is already exist .... $Y SKIPPING $n"
fi

dnf list installed python3
if [ $? -ne 0] ; then
dnf install python3 -y
VALIDATE $? "Python3"
else 
    echo -e "Python3 is already exist ..... $Y SKIPPING $N"
fi