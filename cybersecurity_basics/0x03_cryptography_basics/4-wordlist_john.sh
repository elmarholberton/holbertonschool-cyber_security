#!/bin/bash
john --wordlist=/usr/share/wordlists/rockyou.txt --format=Raw-MD5 "$1" >/dev/null 2>&1; echo "$(john --show --format=Raw-MD5 "$1" | awk -F: 'NF>=2{print $2}')" > 4-password.txt
