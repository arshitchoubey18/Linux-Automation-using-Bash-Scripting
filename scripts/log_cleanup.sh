#!/bin/bash

LOG_DIR="../logs"
DAYS=7

echo "Cleaning log files older than $DAYS days from $LOG_DIR..."

find "$LOG_DIR" -type f -name "*.log" -mtime +$DAYS -exec rm -f {} \;

echo "Old log files cleaned successfully."