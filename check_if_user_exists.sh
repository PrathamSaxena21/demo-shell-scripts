#!/bin/bash

<<help 
this shell script checks if user exists
help

read -p "Enter the username you wish to check" username

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

if [ $count == 0 ];
then 
	echo "User does not exists"
else
	echo "User exists"
fi
