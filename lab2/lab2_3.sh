#! /bin/bash

FILE=$1
LOG=$2

if [ ! -f $LOG ]; then
	mkdir /var/log/cs183/
	touch $LOG
fi

if [ -e "$FILE" ]; then
	LAST=$(awk '{print$NF}' $LOG | tail -1)
	if [ "$LAST" = "found" ]; then
		echo "$(date +"%Y-%m-%d %T") - File \"$FILE\" has not been updated"
		#print this out to let me know that I am not updating the uptime.log
	else
		echo "$(date +"%Y-%m-%d %T") - File \"$FILE\" has been found" >> $LOG
	fi
else

	LAST=$(awk '{print$NF}' $LOG | tail -1)
	if [ "$LAST" = "lost" ]; then
		echo "$(date +"%Y-%m-%d %T") - File \"$FILE\" has not been updated"
	else
		echo "$(date +"%Y-%m-%d %T") - File \"$FILE\" has been lost" >> $LOG
	fi
fi
