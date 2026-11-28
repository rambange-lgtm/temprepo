#!/bin/bash

source_dir="/home/ubuntu/data"
backup_dir="/home/ubuntu/backup"

###mkdir -p "$backup_dir"

tar -cvf "$backup_dir/backup_$(date +%d%m%Y-%m%h%s).tar" "$source_dir"

if [ $? -eq 0 ]; then
    echo "Backup created successfully"
else
    echo "Backup failed"

    exit 1
fi
