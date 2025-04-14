#!/bin/bash

awk -F: '
/Registrant|Admin|Tech/ && $2 {
    gsub(/^[ \t]+|[ \t]+$/, "", $1);
    gsub(/^[ \t]+|[ \t]+$/, "", $2);
    print $1 "," $2;
}
' fake_whois.txt > "$1.csv"

