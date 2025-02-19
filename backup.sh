#!/bin/bash

<<info 
this shell script willl take periodic backups
eg.
./backup.sh <source> <dest>
info

src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d')

zip -r "$dest/backup-$timestamp.zip" $src > /dev/null

echo "Backup completed"
