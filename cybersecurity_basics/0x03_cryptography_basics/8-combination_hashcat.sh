#!/bin/bash
# Usage: ./8-combination_hashcat.sh wordlist1.txt wordlist2.txt
hashcat --stdout -a 1 "$1" "$2"
