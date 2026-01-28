#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]; then
  echo "Please install using root permissions"
fi

echo "Installing nginx"

dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "Installing Nginx ... FAILURE"
    exit 1
else
    echo "Installing Nginx ... SUCCESS"
fi