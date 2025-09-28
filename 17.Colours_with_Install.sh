#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"   ### N for Normal
B="\e[34m"

USERID=$(id -u)

if [ $USERID -ne 0 ] ; then
    echo -e "$R ERROR:: $N Please run this script with $B ROOT Privilages $N"
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ] ; then
        echo -e "$R ERROR:: $N $2 Installation $R Failed $N"
    else
        echo -e "$G SUCCESS:: $N $2 Installation $G Successful $N"
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