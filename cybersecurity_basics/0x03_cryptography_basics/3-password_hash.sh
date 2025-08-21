#!/bin/bash
printf "%s%s" "$1" "$(openssl rand -hex 8)" | openssl sha512 | awk '{print $2}' > 3_hash.txt
