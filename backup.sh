#!/bin/sh

echo "Backup script"
SOURCE=$1
BACKUP_DIR=$2
BACKUP_FILENAME="$BACKUP_DIR/backup_$(date +%Y%m%d_%H%M%S).tar.gz"

echo $BACKUP_FILENAME
mkdir -p "$BACKUP_DIR"

if [ -d $SOURCE ]; then
    echo "Backing up directory: $SOURCE"
    echo "Backup will be saved to: $BACKUP_FILENAME"
    tar -czf "$BACKUP_FILENAME" -C "$SOURCE" . # destination first, then source. -C and '.' makes it zip only the main directory, and not all the way from the root!!
    echo "Backup complete"
else
    echo "Source is not a directory: $SOURCE"
    exit 1
fi