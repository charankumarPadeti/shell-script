#!/bin/bash

ID=$(id -u)

R="\e[31m"
G="\e[32m"
y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +F%-%H-%M-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log"


VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e " $2....$R FAILURE $N"
        exit 1
    else
        echo -e " $2...$G SUCCESS $N"
    fi
}
if [ $ID -ne 0 ]
then
    echo -e " ERROR : $R Please go with root acess $N"
    exit 1

else
    echo -e " $R you are root user $N"
fi

# echo "Allll agruments passed : $@"

for package in $@
do 
    yum list installed  $package &>> $LOGFILE
    if [ $? -ne 0 ]
    then
        yum install $package -y &>> $LOGFILE
        VALIDATE $? "installation of $packages "
    else
        echo -e "$package is already installed ...$Y SKIPPING $n "
    fi
done