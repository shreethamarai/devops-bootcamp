# Linux Basics – Notes

## 1. Navigation
- `pwd` → Print current directory
- `ls` → List files
- `cd /path/to/dir` → Change directory

## 2. File Management
- `touch file.txt` → Create empty file
- `mkdir dir` → Create folder
- `cp file.txt copy.txt` → Copy file

## What is chmod?
 - chmod = change mode (file access permissions).

 - Symbolic way:
``` bash


 chmod u+x test.txt   # add execute for user
 chmod g-w test.txt   # remove write from group
 chmod o+r test.txt   # add read for others
 
- u = user (owner)
 - g = group
 - o = others
 - a = all

 - Numeric way (octal):
 - r = 4

 - w = 2

 - x = 1

 - Add the numbers to get permission for each role:

 - Role	Value Example	Meaning
 - Owner	6 (4+2)	read, write
 - Group	4	read only
 - Others	4	read only

``` So:
 
 chmod 644 file   # rw-r--r--
 chmod 755 file   # rwxr-xr-x
 chmod 600 file   # rw-------




#  What is chown?
 - chown = change owner (user & group ownership of a file).


```
 sudo chown root:root test.txt   # owner=root, group=root
 sudo chown myuser:mygroup file  # custom owner & group



