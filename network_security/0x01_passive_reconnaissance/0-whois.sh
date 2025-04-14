#!/bin/bash
awk -F': ' '/(Registrant|Admin|Tech) (Organization|State\/Province|Country|Email)/ {gsub(/^[ \t]+|[ \t]+$/, "", $1); gsub(/^[ \t]+|[ \t]+$/, "", $2); print $1 "," $2}' fake_whois.txt > $1.csv
