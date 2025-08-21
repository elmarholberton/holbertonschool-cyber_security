#!/bin/bash
# Usage: ./4-wordlist_john.sh hash.txt
[ -z "$1" ] && { echo "Usage: $0 hash.txt"; exit 1; }
# Crack with rockyou in wordlist mode; hashes provided look like MD5 (32 hex)
john --wordlist=/usr/share/wordlists/rockyou.txt --format=Raw-MD5 "$1" >/dev/null 2>&1
# Show cracked creds and keep only plaintexts (after the first colon)
john --show --format=Raw-MD5 "$1" 2>/dev/null | awk -F: 'NF>=2 {print $2}' > 4-password.txt
