#!/bin/bash
find "$1" -maxdepth 1 -perm -4000 -type f 2>/dev/null
