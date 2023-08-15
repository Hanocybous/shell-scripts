#!/bin/bash
backup_dir="/path/to/backup"
source_dir="/path/to/source"

tar -czvf "$backup_dir/backup_$(date +%Y%m%d%H%M%S).tar.gz" "$source_dir"
echo "Backup completed!"
