#!/bin/bash

# Usage: ./ec2-start-stop.sh start|stop instance-id
# Example: ./ec2-start-stop.sh start i-0123456789abcdef0

ACTION=$1
INSTANCE_ID=$2

if [[ -z "$ACTION" || -z "$INSTANCE_ID" ]]; then
  echo "Usage: $0 start|stop instance-id"
  exit 1
fi

aws ec2 "$ACTION"-instances --instance-ids "$INSTANCE_ID" --output text

echo "EC2 instance $INSTANCE_ID has been requested to $ACTION."
