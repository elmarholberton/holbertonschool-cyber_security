#!/bin/bash
hashcat -m 0 -a 0 "$1" /usr/share/wordlists/rockyou.txt --quiet --show | awk -F: '{print $2}' > 7-password.txt
