#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.LOG"

R=" \e[31m"
G=" \e[32m"
N="\e[0m"
VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e " ERROR $2: $R FAILED:"
        exit 1

    else
        echo -e "$2 $G.... SUCESS $N"
    fi

}

if [ $ID -ne 0 ]
then
    echo " ERROR : Please run script with root acces"
    exit 1
else
    echo "you are root user"

fi

yum install mysql -y &>> $LOGFILE

VALIDATE $? "installing my sql "

yum install git -y &>> $LOGFILE

VALIDATE $? "installing my git "