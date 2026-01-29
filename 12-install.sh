#!/bin/bash

USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then
    echo "Kindly run this script with root user access"
    exit 1
fi

dnf install nginx -y 
if [ $? -ne 0 ]; then
    echo "Installing nginx Failed"
    exit 1
else
    echo "Installing nginx Success"
fi

dnf install mysql -y 
if [ $? -ne 0 ]; then
    echo "Installing mysql Failed"
    exit 1
else
    echo "Installing mysql Success"
fi

dnf install nodejs -y 
if [ $? -ne 0 ]; then
    echo "Installing nodejs Failed"
    exit 1
else
    echo "Installing nodejs Success"
fi
