#!/bin/bash

INTERNET=$(ping -w 2 -c 1 www.google.com | grep received | awk -F" " '{print $4 }')
if [[ $INTERNET -gt "0"  ]]
then
#	if connect internet
	dateFromServer=$(curl -v --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
	dateCompare=$(date +%s -d "$dateFromServer")
	dateNow=$(date +%s)

	result=$(($dateNow-dateCompare))
	if [ "$result" -gt "3" ];
	then
		echo "Synchronize NTP Started to Internet!"
		service ntpd stop
		ntpdate -s 0.id.pool.ntp.org
		service ntpd start
	else
		echo "Time if Perfect!"
#		makes long crontab after time is good#
		#sed -i 's|*/.2*|0 |g' /etc/crontab
	fi
else
#	if connect LAN
	echo "Synchronize NTP Started in LAN!"
        service ntpd stop
        ntpdate -s 10.4.0.1
        service ntpd start
fi
