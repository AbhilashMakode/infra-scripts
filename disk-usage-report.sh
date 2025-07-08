#!/bin/bash

# Usage: ./disk-usage-report.sh /home /var

if [[ $# -eq 0 ]]; then
  echo "Usage: $0 [dir1 dir2 ...]"
  exit 1
fi

for dir in "$@"; do
  echo "Usage for $dir:"
  du -sh "$dir"
done
