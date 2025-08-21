#!/bin/bash
hashcat -m 0 -a 0 "$1" /usr/share/wordlists/rockyou.txt --quiet --potfile-path ./hashcat.potfile >/dev/null 2>&1; hashcat -m 0 --show "$1" --potfile-path ./hashcat.potfile --quiet | awk -F: '{print $2}' > 7-password.txt
