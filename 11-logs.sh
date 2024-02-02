#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "ERROR $2: FAILED:"
        exit 1

    else
        echo "$2.... SUCESS"
    fi

}

if [ $ID -ne 0 ]
then
    echo " ERROR : Please run script with root access"
    exit 1
else
    echo "you are root user"

fi

yum install mysqlllll -y

VALIDATE $? "installing my sql "

yum install git -y

VALIDATE $?