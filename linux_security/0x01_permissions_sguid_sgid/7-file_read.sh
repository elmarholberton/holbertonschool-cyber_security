#!/bin/bash
find "$1" -maxdepth 1 -type f -exec chmod o=r {} \; 2>/dev/null
