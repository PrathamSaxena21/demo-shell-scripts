#!/bin/bash

<<info
This shell script will take periodic backups

eg. ./backup.sh <source> <destination>

info

src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d-%H-%M')

zip -r "$dest/backup-$timestamp.zip" $src

echo "Backup Completed"
