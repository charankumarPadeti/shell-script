#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "....FAILED"
        exit 1
    else
        echo "....SUCESS"
    fi
}

if [ $ID -ne 0 ]
then
    echo "ERROR : Please go on root access"
    exit 1

else
    echo "you are root user"

fi

yum install mysql -y
VALIDATE $?
yum install git -y
VALIDATE $?

