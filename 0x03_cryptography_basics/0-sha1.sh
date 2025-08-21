#!/usr/bin/env bash
# 0-sha1.sh - Hash a given password using SHA-1 and save to 0_hash.txt

# Check if an argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <password>"
  exit 1
fi

# Hash the password with SHA-1, output only the hex digest, save to 0_hash.txt
# -n prevents adding a newline to the input (important for exact hash)
echo -n "$1" | sha1sum | awk '{print $1}' > 0_hash.txt
