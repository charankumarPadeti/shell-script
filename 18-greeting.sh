#!/bin/bash

NAME=""
WISHES=""

USAGE(){
    echo "USAGE:: $(basename $0) -n <name> -w <wishes>"
    echo "Options::"
    echo "-n, specify the name (mandatory)"
    echo " -w, specify the wishes. ex, Good morningg"
    echo "-h, Display the help and exit"
}

while getopts ":n:w:h" opt; do
    case $opt in
        n ) NAME="$OPTARG";;
        w ) WISHES="$OPTARG";;
        h |*) USAGE; exit;;
    esac
done

if [ -z "$NAME" ] || [ -z "$WISHES" ];
then
    echo "ERROR : Both name and wishes are mandatory "
    USAGE
    exit 1
fi

echo " hello $NAME , $WISHES. Iam been learning shell-script"