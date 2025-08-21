#!/bin/bash
hashcat -m 0 -a 1 "$1" wordlist1.txt wordlist2.txt --quiet --potfile-path ./hashcat9.pot >/dev/null 2>&1; hashcat -m 0 --show "$1" --potfile-path ./hashcat9.pot --quiet | awk -F: '{print $2}' > 9-password.txt
