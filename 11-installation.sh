#!/bin/bash
USERID=$(id -u)
echo "User ID is: $USERID"
if [ $USERID -ne 0 ]
then
    echo "Please run this script with root priveleges"
    exit 1
fi

dnf list installed gitt
if [ $? -ne 0 ]
then
    echo "Git Is not installed, going to insall it.."
    dnf install gitt -y
    if [ $? -ne 0 ]
    then
        echo "Git installation is not success..check it"
        exit 1
    else
        echo "Git installation is Sucess"
    fi

else
    echo "Git Already installed, nothing to do."

fi