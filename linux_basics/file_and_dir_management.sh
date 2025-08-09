#!/bin/bash

# 1. Finding files fast (find, locate, grep) - Searching config files speard over many dir's
# 2. Handling large logs (less, tail -f, head) - Reading logs for debugging
# 3. File compression & archieving (tar, gzip, zip) - Moving / archiving backups and deployment packages

### 1. find - the heavy duty serach tool
# search files & dir's by name, type, size, date, permissions, etc.

# search by name
find /home -name "practice.sh"
# /home -> where to start searching 
# -name -> search by name
# "pratice.sh" -> exact match , "*.sh* for partial match

# search by type
find /var/log -type f  # only regular file (no dir's)

# search by size
find /var/log -size +5M  # files larger than 5MB

### 2. locate - the fast search, Uses a prebuilt index (very quick).

sudo apt update && sudo apt install mlocate -y
sudo updatedb
locate practice.sh

### 3. grep - search for text inside files
grep "error" /var/log/syslog  # find lines containing "error" in syslog

# Case-senstivive search
grep -i "error" /var/log/syslog

# Recursive search in a folder
grep -r "Listen" /etc

# Show line numbers
grep -n "Listen" /etc/apache2/apache2.conf


### find + grep together is powerful cmd

find /etc -name "*.conf" -exec grep -i "listen" {} \;







