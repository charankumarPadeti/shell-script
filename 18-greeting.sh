#!/bin/bash

NAME=""
WISHES="Good Morning"

USAGE(){
    echo "USAGE:: $(basename $0) -n <name> -w <wishes>"
    echo "Options::"
    echo "-n, specify the name (mandatory)"
    echo " -w, specify the wishes ( default ) , Good morning "
    echo "-h, Display the help and exit"
}

while getopts ":n:w:h" opt; do
    case $opt in
        n ) NAME="$OPTARG";;
        w ) WISHES="$OPTARG";;
        h |*) USAGE; exit;;
    esac
done

#if [ -z "$NAME" ] || [ -z "$WISHES" ];
if [ -z "$NAME" ];

then
    echo "ERROR : Name is Mandatory "
    USAGE
    exit 1
fi

echo " hello $NAME , $WISHES. Iam been learning shell-script"