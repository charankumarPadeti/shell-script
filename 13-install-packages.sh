#!/bin/bash

ID=$(id -u)

R="\e[31m"
G="\e[32m"
y="\e[33m"
N="\e[0m"

if [ $ID -ne 0 ]
then
    echo -e " ERROR : $R Please go with root acess $N"
    exit 1
else
    echo -e " $R you are root user $N"
fi

echo "Alll agruments passed : $@"