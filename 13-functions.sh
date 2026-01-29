#!/bin/bash

USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then
    echo "Kindly run this script with root user access"
    exit 1
fi

VERIFY(){
    if [ $1 -ne 0 ]; then
        echo "Installing $2 Failed"
        exit 1
    else
        echo "Installing $2 Success"
    fi  
    
}


dnf install nginx -y 
VERIFY $? "Nginx"

dnf install mysql -y 
VERIFY $? "mysql"

dnf install nodejs -y 
VERIFY $? "NodeJS"