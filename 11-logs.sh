#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "ERROR : FAILED:"
    else
        echo "SUCESS"
    fi

}

if [ $ID -ne 0 ]
then
    echo " ERROR : Please run script with root access"
else
    echo "you are root user"

fi

yum install mysql -y

VALIADATE $? "installing my sql "

yum install git -y

VALIDATE $?