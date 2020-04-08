#!/bin/bash

while read -r line
do
	#echo $user $uid
	echo "$line" > temp.txt
	user=$(awk -F":" '{print $1}' temp.txt)
	gid=$(awk -F":" '{print $4}' temp.txt)
	groupName=$(awk -v num=$gid -F":" '{if( $3 == num ) print $1}' /etc/group)
	echo $user $gid $groupName

done < /etc/passwd
rm temp.txt
