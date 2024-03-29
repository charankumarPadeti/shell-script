#!/bin/bash

ID=$(id -u)

T=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$T.log"

R="\e[31m"
G="\e[32m"
N="\e[0m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2....$R FAILED $N"
        exit 1
    else
        echo -e "$2....$G SUCESS $N"
    fi
}

if [ $ID -ne 0 ]
then
    echo -e "ERROR : $R Please go on root access $N"
    exit 1

else
    echo -e " $G you are root user $N"

fi

yum install mysql -y &>> $LOGFILE
VALIDATE $? "INSTALLING MYSQL "
yum install git -y &>> $LOGFILE
VALIDATE $? "INSTALLING GIT "

