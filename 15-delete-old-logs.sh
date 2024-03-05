#!/bin/bash

R="\e[31m"
G="\e[32m"
N="\e[33m"
Y="\e[0m"

SOURCE_DIR=/tmp/shellscript-logs

if [ ! -d $SOURCE_DIR ]
then
    echo -e "$R  source directory : $SOURCE_DIR does not exists. $N"
fi

FILES_TO_DELETE=$(find  $SOURCE_DIR -type f -mtime +14 -name "*.java")

while IFS= read -r line
do
    echo " Deleting file: $line"
done <<< $FILES_TO_DELETE