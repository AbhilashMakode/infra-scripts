#!/bin/bash

# Usage: ./backup-postgres.sh db_name s3_bucket
# Example: ./backup-postgres.sh mydb my-bucket-name

DB_NAME=$1
S3_BUCKET=$2
DATE=$(date +%F-%H-%M)
FILE_NAME="${DB_NAME}-${DATE}.sql"

if [[ -z "$DB_NAME" || -z "$S3_BUCKET" ]]; then
  echo "Usage: $0 db_name s3_bucket"
  exit 1
fi

pg_dump "$DB_NAME" > "$FILE_NAME"

if [[ $? -eq 0 ]]; then
  aws s3 cp "$FILE_NAME" "s3://${S3_BUCKET}/$FILE_NAME"
  echo "Backup uploaded to S3: $FILE_NAME"
  rm "$FILE_NAME"
else
  echo "PostgreSQL backup failed."
fi
