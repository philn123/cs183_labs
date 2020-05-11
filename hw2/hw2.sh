# dd command
# dd is used to copy files, and also convert them
# it can be used to copy directories too, used to backup folders/disks
dd if=hw2.sh of=test.txt
# this command would be useful to backup files before making modifications.
# you can extend this to copy folders, and disks

# find command
# find is used to look for files in the system
find /var -cmin -20
# find all files in /var that changed in last 20min
# you can use this to see what has been modified recently

# file command
# file is used display the type of a file, good if the file doesn't have a file extension
file test.txt
# you can use this to see what files are in the system
# if you don't know what a file is, you can check it with this command

# fuser command
# fuser can locate processed based on the files you enter. 
# System admin can identify processes using files/sockets
fuser -v .
# this command diplays PIDs of processes accessing the current working directory
# useful to see which processes are affecting different parts of the system

# grep command
# grep is used to match text in files. It prints the matching line.
cat test.txt | grep "grep"
# this command could is useful because you can replace the text file with a log file, 
# to see if a certain process or command has been used, in this case, we are checking if 
# grep has been used

# host command
# host is used for ip lookup, searching ip to name and vice versa
host 8.8.8.8
# this command is useful if an admin finds an ip address is logs, he can look it up to see
# what website/domain the ip is linked too. Useful to see what people are connecting too

# ldd command
# ldd command allows someone to find dependencies of an executable
ldd /bin/ls
# this command is useful to find shared libraries dependencies, so if youre missing
# a dependency on an executable, you can find out with this command and then install it
# useful for sys admin to find packages that are missing

# lsof command
# lsof command shows info about files that are opened by processes
lsof -u root
# command is useful for sysadmins for them to check what processes belong to a certain user
# make sure to see if one user's process is affecting the system's performance with a process.

# mount command
# mount allows user to make certain part of storage available for use
# operating system now can use this point.
mount -t vfat /dev/sdb1 /media/USB
# this command allows user to mount a flashdrive
# sys admin use this to create flash drives and move info onto them

# ps command
# ps command allows you to check status of active processes. It can display
# technical information too.
ps -e --forest
# this command is useful for sysadmin since it shows how processes are linked
# and how these processes have been killed. Allows sysadmin to see what processes
# are connected

# pkill command
# pkill kills processes that have the name, useful for troublesome programs
pkill gedit
# this is useful if a program gets stuck, or is taking up too many resoruces
# a sysadmin can kill the process

# netstat command
# netstat displays info for tcp, network interfaces, and statistics about those networks
netstat -atu
# sysadmin find this useful for finding out information about network connections
# and what the system is connected to, and listening too

# renice command
# renice changes priority of process(es). So you can make something have higher
# priority so the scheduler runs it first
renice 10 1918
# this command will allow sysadmin to change priority of process. It helps
# to make processes run more or less, so an admin can make a process that is 
# important run more

# rsync command
# rsync copies and sync files to/from a remote system.
rsync -zvh test.txt /tmp/backups/
# this command allows admin to backup files to a location in the system
# also able to put destination as remote backup location

# time command 
# time command is used to measure performace(time) it takes 
# to run a command(script)
time ./hw2.sh
# sysadmin can use time to see performance of the scripts they have written
# they can make sure scripts don't negatively impact performance

# ssh command
# ssh is used to connect to remote system securely. The data transfer is
# encrypted. 
ssh -X pnguy092@cluster.hpcc.ucr.edu
# sysadmin can use ssh to go into system to do updates/modifications
# useful since it is remote

# stat command
# stat useful for displaying detailed info about file/file systems
stat hw2.sh
# command can be used to find more info on file such as size, and name, and 
# last access and such. Useful to see when it was last modified and 
# what type of file it is 

# strace command
# strace is a command that follows system calls made by a command
# also can be used by executable
strace /usr/local/bin/test
# this command would be useful to debug a script that is written
# sysadmin can debug, and then output this to a file so they can view it

# uname command
# uname prints out information about the OS and system that you use it on
uname -r 
# useful for sysadmin when working on new system, they can find 
# appropriate info about system to work on it and install new packages

# wget command
# wget is a command that download files from the web.
# can download compressed files, and such
wget -O wget.zip https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.17.2.tar.xz
# Sysadmin can use wget to download whatever packages or files they need and 
# rename those things into any name they want. Allows to install programs 
# that they can use/need.
