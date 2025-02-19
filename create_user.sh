#!/bin/bash

<<help 
this script will make user by taking only the arguments
arguments will be the username and password 
help

echo "==== Creation of user started ===="

sudo useradd -m "$1"

echo -e "$2\n$2" | sudo passwd "$1"

echo "==== User creation completed ===="

echo "==== Deletion of user started ===="

sudo userdel "$1"

echo "==== deletion of user completed ===="

cat /etc/passwd | grep $1 | wc 

echo "as wc is zero user is deleted"

