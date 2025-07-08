#!/bin/bash

# Usage: ./rotate-logs.sh /var/log/app.log

LOG_FILE=$1

if [[ ! -f "$LOG_FILE" ]]; then
  echo "Log file not found: $LOG_FILE"
  exit 1
fi

TIMESTAMP=$(date +%F-%H%M%S)
mv "$LOG_FILE" "$LOG_FILE.$TIMESTAMP"
touch "$LOG_FILE"

echo "Rotated log file: $LOG_FILE → $LOG_FILE.$TIMESTAMP"
