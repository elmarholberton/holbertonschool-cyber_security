# 0x06 Nmap Advanced Port Scans

This project contains Bash scripts for performing different advanced Nmap scans:
- **0-null_scan.sh** → NULL scan on ports 20–25
- **1-fin_scan.sh** → FIN scan on ports 80–85 with fragmentation and T2 timing
- **2-xmas_scan.sh** → Xmas scan on ports 440–450 (open-only, reasons, packet trace)
- **3-maimon_scan.sh** → Maimon scan on http, https, ftp, ssh, telnet
- **4-ask_scan.sh** → TCP ACK scan on specified ports with timeout and reasons
- **5-window_scan.sh** → TCP Window scan with port exclusion
- **6-custom_scan.sh** → Custom scan with all TCP flags, output saved to file
