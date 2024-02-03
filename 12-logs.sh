#!/bin/bash

ID= (u-id)

VALIDATE(){
    if[ $1 -ne 0 ]
    then
        echo "..... failed"
        exit 1
    else
        echo " ......SECUSS"
}

if[ ID -ne 0 ]
then
    echo "ERROR : Please go on root access"

    exit 1

else
    echo "you are root user"

install mysql  -y
VALIDATE " installing mysql"
install git -y
VALIDATE " installing git"
