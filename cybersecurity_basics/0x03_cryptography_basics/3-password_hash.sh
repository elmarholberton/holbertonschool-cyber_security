#!/bin/bash
# Generate a random 16-character salt
SALT=$(openssl rand -hex 8)

# Combine password ($1) with salt and hash using SHA-512
echo -n "$1$SALT" | openssl sha512 > 3_hash.txt
