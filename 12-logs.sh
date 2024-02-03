#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "ERROR : Please go on root access"
    exit 1

else
    echo "you are root user"

fi

