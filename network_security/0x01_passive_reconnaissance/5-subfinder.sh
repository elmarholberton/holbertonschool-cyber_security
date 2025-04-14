#!/bin/bash

domain=$1
subfinder -silent -d "$domain" | tee /dev/tty | while read sub; do
    ip=$(dig +short "$sub" | head -n 1)
    if [ -n "$ip" ]; then
        echo "$sub,$ip" >> "${domain}.txt"
    fi
done
