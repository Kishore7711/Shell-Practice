#!/bin/bash

##### mkdir -p /var/log/shell-script ---( here -p means if not there... create directory, if there... do not create) create a directory for logs

###### echo "18_logs.sh" | cut -d "." -f1 --- 18_logs

#### execute command and take the output and store the one variable ---- LOGS_FILE=$(echo "18_Logs.sh" | cut -d "." -f1) -- output is 18_Logs --- assign to variable LOGS_FILE

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"   ### N for Normal
B="\e[34m"

LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$(echo "18_Logs.sh" | cut -d "." -f1)
LOGS_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"

mkdir -p $LOGS_FOLDER
echo "Script Execution Started at : $(date)"


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

dnf list installed mysql &>>$LOGS_FILE
####  install if it is not found
if [ $? -ne 0 ]; then
dnf install mysql -y &>>$LOGS_FILE
VALIDATE $? "Mysql"
else
    echo -e "Mysql is already exist .... $Y SKIPPING $N"
fi

dnf list installed nginx &>>$LOGS_FILE
if [ $? -ne 0 ] ; then
dnf install nginx -y &>>$LOGS_FILE
VALIDATE $? "nginx"
else
    echo -e "Nginx is already exist .... $Y SKIPPING $N"
fi

dnf list installed python3 &>>$LOGS_FILE
if [ $? -ne 0] ; then
dnf install python3 -y &>>$LOGS_FILE
VALIDATE $? "Python3"
else 
    echo -e "Python3 is already exist ..... $Y SKIPPING $N"
fi
