#!/bin/bash 

# Navigate to home 
cd ~

#crate folder and files
mkdir linux-practice
cd linux-practice
touch file1.txt file2.txt file3.txt
mkdir subfolder

# Change permissions
chmod 600 file1.txt file2.txt file3.txt

# Display results
ls -1
