#!/bin/bash

<<info 
this shell script willl take periodic backups
eg.
./backup.sh <source> <dest>
this can also be used with cron
info

src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d-%H-%M')

zip -r "$dest/backup-$timestamp.zip" $src

echo "Backup Completed"
