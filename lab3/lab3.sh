# !/bin/bash

echo 'finding all files in /bin, /sbin, /usr/bin, and /usr/sbin that are setui and owned by root'
read -p "Hit any key to continue."
find /bin /sbin /usr/bin /usr/sbin -user root -perm -4000
echo 'these files are potential security risks because it gives normal user access to files with elevated privleges, so they can have root access.\n'
echo 

echo 'finding all files across system that have setuid or setgid enabled'
read -p "Hit any key to continue."
find / -perm -4000 -o -perm -2000
echo 

echo 'Finding all files in /var that have changed in the last 20min.'
read -p "Hit any key to continue."
find /var -cmin -20
echo 

echo 'Finding all files in /var that are regular files of zero length.'
read -p "Hit any key to continue."
find /var -type f -size 0
echo 

echo 'Finding all files in /dev that are not reg, or directories.'
read -p "Hit any key to continue."
find /dev ! -type f ! -type d -printf "%p %m: %t \n"
echo

echo 'Finding all directories in /home not owned by root, and change perm to 711.'
read -p "Hit any key to continue."
find /home \! -user root -type d -exec chmod 711 {} \; -exec ls -la {} \;
echo

echo 'Finding all reg files in /home not owned by root, and change perm to 755.'
read -p "Hit any key to continue."
find /home \! -user root -type f -exec chmod 755 {} \; -exec ls -la {} \;
echo 

echo 'Find all files in /etc that have changed in last 5 days.'
read -p "Hit any key to continue."
find /etc -ctime -5
