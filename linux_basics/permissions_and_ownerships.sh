#!bin/bash

- uses

# Check file permissions
touch test.txt
ls -l
# you can see test.txt file has permissions like -rw-r-r-- , and ownershipship to $USER here user is $thamarai

# Change file permissions (like read, write and execute)
chmod 755 test.txt
ls -l test.txt
# now file permission look likes -rwxr-xr-x
# 7 -> read+write+execute (owner)
# 5 -> read+execute (group)
# 5 -> read+execute (others)

#restore file permissions ( -rwxr-xr-x to -rw-r-r--)
chmod 644 test.txt
ls -l


# change file ownership, user to superuser
sudo chown root:root test.txt
ls -l test.txt

# restore onwership , superuser to user
sudo chown $USER:$USER test.txt
ls -l test.txt
