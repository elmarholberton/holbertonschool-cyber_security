# Passive Reconnaissance Report on holbertonschool.com

## 1. Domain Overview
- **Domain:** `holbertonschool.com`
- **Date of Analysis:** April 14, 2025
- **Tool Used:** [Shodan.io](https://www.shodan.io)

---

## 2. IP Addresses / Ranges Found

- 75.2.70.75
- 99.83.190.102

> IPs associated with holbertonschool.com and its services, gathered using `domain:holbertonschool.com` search on Shodan.

---

## 3. Technologies and Frameworks Detected

| Subdomain                    | IP Address     | Technology Stack               |
|-----------------------------|----------------|--------------------------------|
| www.holbertonschool.com     | 75.2.70.75     | Amazon CloudFront, TLS 1.2     |
| api.holbertonschool.com     | 99.83.190.102  | Node.js, Express, AWS hosting  |

> Technologies were inferred from open ports, service banners, and metadata shown by Shodan.

---

## 4. Methodology

- Query used: `domain:holbertonschool.com`
- No active scanning was performed.
- All data is passively collected from public sources indexed by Shodan.

---

## 5. Notes

- Shodan may not list **every subdomain**.
- IPs may belong to **shared cloud infrastructure**.
- Some technologies (like backend languages) may not be visible via passive scan.

---

## 6. Conclusion

Using passive tools like Shodan gives a great overview of a target's exposed services, technologies, and infrastructure **without any direct interaction**.
