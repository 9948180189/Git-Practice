#!/bin/bash
USERID=$(id -u)
echo "User ID is: $USERID"
if [ $USERID -ne 0 ]
then
    echo "Please run this script with root priveleges"
    exit 1
fi

dnf list installed git
if [ $? -ne 0 ]
then
    echo "Git Is not installed, going to insall it.."
    dnf install git -y
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
dnf list installed mysql

if [ $? -ne 0 ]
then
    echo "Mysql is not installed..going to install"
    dnf install mysql -y
    if [ $? -ne 0 ]
    then
        echo "Mysql installation is failure..please check it."
        exit 1
    else 
        echo "Mysql installation is success"

    fi  
else
    echo "Mysql is Already Installed..nothind to do"

fi          