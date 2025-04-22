#!/bin/bash
# ARP-based host discovery using Nmap (no port scan)
sudo nmap -sn -PR "$1"
