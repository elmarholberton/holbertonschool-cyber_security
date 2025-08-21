Resources
Read or watch:
What is cryptography
The importance of cryptography
What is cryptography in cyber security
Cryptography
OpenSSL
John The Ripper Hash Formats
How to use hashcat
References
John the Ripper
hashcat
Learning Objectives
At the end of this project, you are expected to be able to explain to anyone, without the help of Google:

What is cryptography in cybersecurity
What are the different types of cryptography
What is Encryption
What is Decryption
What is the importance of cryptography
What are the types of cryptography
What are the applications of cryptography
What is a hash algorithm
What SHA stands for
What is John the Ripper
How to use John the Ripper
How to crack advanced hashes with John the Ripper
What is hashcat
How to use hashcat
Requirements
General
Allowed editors: vi, vim, emacs.
All your scripts will be tested on Kali Linux.
All your scripts should be exactly two lines long ($ wc -l file should print 2)
You must substitute the IP range for $1.
All your files should end with a new line (Why?)
The first line of all your files should be exactly #!/bin/bash.
A README.md file, at the root of the folder of the project, is mandatory
You are not allowed to use backticks, &&, || or ;.
Your code should use the Betty style. It will be checked using betty-style.pl and betty-doc.pl
All your files must be executable
warning
Please ensure to consistently use lowercase format when referring to cryptographic algorithms such as sha256, or any other algorithm.
Tasks
0. SHA1
mandatory
Write a bash script that hashes a given password

You should use SHA-1 algorithm
Your script should accept a password as an arguments $1
The resulting hash must be stored in 0_hash.txt
Depending on the given password, the output could change

┌──(maroua㉿HBTN-LAB)-[~/0x03_cryptography_basics]
└─🏴 ./0-sha1.sh "Holberton"
┌──(maroua㉿HBTN-LAB)-[~/0x03_cryptography_basics]
└─🏴 cat 0_hash.txt
808f94d2847fb381839b4bbbd7cdf30804fd47ac
Repo:

GitHub repository: holbertonschool-cyber_security
Directory: cybersecurity_basics/0x03_cryptography_basics
File: 0-sha1.sh
