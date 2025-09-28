#!/bin/bash

########## dnf install mysql -y

##   $? ### it will give exit status of last executed command --- previous command exit status

### 0 -- Success
### 1 - 127 -- Failure

#### step 1 -- check if the user is root access or not
#### if root access then proceed
#### otherwise stop and tell them to run with root access 

#### step 2 -- dnf install mysql -y

#### step 3 -- Validate if mysql is installed or not (checks or test)
#### check exit status , if 0 success
#### otherwise show the user it is failed

###   id -u   ### it will give user id of current user
### root user id is always 0

#### if id -u is 0 then proceed
#### otherwise stop

USERID=$(id -u)

if [ $USERID -ne 0 ] ; then
    echo "ERROR:: Please run this Script with ROOT Privileges"
fi

dnf install mysql -y

if [ $? -ne 0 ] ; then
    echo "ERROR:: Mysql Installation is Failed"
else
    echo "SUCCESS:: Mysql Installation is Successfull"
fi
