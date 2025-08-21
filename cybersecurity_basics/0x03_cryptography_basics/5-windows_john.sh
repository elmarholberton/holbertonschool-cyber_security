#!/bin/bash
john --wordlist=/usr/share/wordlists/rockyou.txt --format=NT "$1" >/dev/null 2>&1; echo "$(john --show --format=NT "$1" 2>/dev/null | awk -F: 'NF>=2{print $2}')" > 5-password.txt
