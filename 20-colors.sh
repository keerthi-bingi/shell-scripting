#!/bin/bash

USER_ID=$(id -u)
LOG_FOLDER=/var/log/installation
LOG_FILE=/var/log/installation/$0.log
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

mkdir -p $LOG_FOLDER


if [ $USER_ID -ne 0 ]; then
    echo -e "$R Kindly run this script $N with $G root $N user access" | tee -a $LOG_FILE
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
    dnf list installed $package
    if [ $? -ne 0 ]; then
        echo "$R Installing $package $N"
        dnf install $package -y &>> $LOG_FILE
        VERIFY $? "$package"
    else
        echo "$package already installed, $Y Skipping $N"
    fi
done