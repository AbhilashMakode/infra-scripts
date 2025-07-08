#!/bin/bash

# Usage: ./update-env.sh .env.production NEW_KEY=NEW_VALUE

FILE=$1
PAIR=$2

if [[ ! -f "$FILE" || -z "$PAIR" ]]; then
  echo "Usage: $0 path/to/.env KEY=VALUE"
  exit 1
fi

KEY=$(echo "$PAIR" | cut -d= -f1)
VALUE=$(echo "$PAIR" | cut -d= -f2)

if grep -q "^$KEY=" "$FILE"; then
  sed -i "s/^$KEY=.*/$KEY=$VALUE/" "$FILE"
else
  echo "$KEY=$VALUE" >> "$FILE"
fi

echo "Updated $KEY in $FILE"
