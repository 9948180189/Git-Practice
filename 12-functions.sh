#!/bin/bash
USERID=$(id -u)
echo "User ID is: $USERID"
VALIDATE(){
    echo "exit status: $1"
}
    if [ $1 -ne 0 ]
    then
        echo "$2 is Failed"
        exit  1
    else
        echo "$2 is .success"
    fi    
}
if [ $USERID -ne 0 ]
then
    echo "Please run this script with root priveleges"
    exit 1
fi

dnf list installed git
VALIDATE $? "Listing Git"
if [ $? -ne 0 ]
then
    echo "Git Is not installed, going to insall it"
    dnf install git -y
    VALIDATE $? "Installing Git"
else
    echo "Git Already installed, nothing to do."

fi
dnf installed mysql
if [ $? -ne 0 ]
then
    echo "Mysql is not installed..going to install"
    dnf install Mysql -y
    VALIDATE $? "Installing MySQL"  
else
    echo "Mysql is already Installed..nothing to do"

fi
