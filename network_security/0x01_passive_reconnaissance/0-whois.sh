#!/bin/bash
whois $1 | awk -F': ' '/(Registrant|Admin|Tech) (Organization|State\/Province|Country|Email)/ {gsub(/^[ \t]+|[ \t]+$/, "", $1); gsub(/^[ \t]+|[ \t]+$/, "", $2); print $1 "," $2}' > $1.csv
