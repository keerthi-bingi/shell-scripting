#!/bin/bash

USER_ID=$(id -u)
LOG_FOLDER=/var/log/installation
LOG_FILE=/var/log/installation/$0.log

mkdir -p $LOG_FOLDER


if [ $USER_ID -ne 0 ]; then
    echo "Kindly run this script with root user access" | tee -a $LOG_FILE
    exit 1
fi

VERIFY(){
    if [ $1 -ne 0 ]; then
        echo "Installing $2 Failed" | tee -a $LOG_FILE
        exit 1
    else
        echo "Installing $2 Success" | tee -a $LOG_FILE
    fi  
    
}

for package in $@
do
    dng list installed $package
    if [ $? -ne 0 ]; then
        echo "Installing $package"
        dnf install $package -y &>> $LOG_FILE
        VERIFY $? "$package"
    else
        echo "$package already installed, Skipping"
    fi
done