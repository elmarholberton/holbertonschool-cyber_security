0. Will arp be enough ?
mandatory
Write a bash script that scan a subnetwork to discover live host using ARP scan.

You should use nmap.
Your code should tell nmap not to do a port scan after host discovery.
You should run your code as privileged user. root or sudoers.
Your script should accept a subnetwork as an arguments $1.
Depending on the scanned subnetwork, the output could change.
We can’t expect to learn about the Target MAC Address, unless we are in the the same subnetwork.

┌──(yosri)-[~/0x04_nmap_live_hosts_discovery]
└─🏴 ./0-arp_scan.sh 192.168.65.0/24
[sudo] password for yosri:
Starting Nmap 7.93 ( https://nmap.org ) at 2023-05-22 05:02 CDT
Nmap scan report for 192.168.65.1
Host is up (0.00064s latency).
MAC Address: C6:91:0C:4B:4E:64 (Unknown)
Nmap scan report for 192.168.65.2
Host is up.
Nmap done: 256 IP addresses (2 hosts up) scanned in 2.03 seconds
Repo:

GitHub repository: holbertonschool-cyber_security
Directory: network_security/0x04_nmap_live_hosts_discovery
File: 0-arp_scan.sh
