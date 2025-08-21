#!/bin/bash
john --wordlist=/usr/share/wordlists/rockyou.txt --format=Raw-SHA256 "$1" >/dev/null 2>&1; echo "$(john --show --format=Raw-SHA256 "$1" 2>/dev/null | awk -F: 'NF>=2{print $2}')" > 6-password.txt
