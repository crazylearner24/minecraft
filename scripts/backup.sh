#!/bin/bash
BACKUP_DIR=world_backups
mkdir -p "$BACKUP_DIR"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
zip -r "$BACKUP_DIR/world_$TIMESTAMP.zip" world
echo "Backup saved to $BACKUP_DIR/world_$TIMESTAMP.zip"
