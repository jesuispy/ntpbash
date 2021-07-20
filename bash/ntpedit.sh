#!/bin/sh

#sed command to match existing servers and replace with new ntp server privided
#match based on the "server XX" numbers in the sample ntp.conf file 
#If pattern exist action is done. If pattern does not exist nothing will be done so it ca be run multiple times without affecting anything.

sed -i 's/^server 66.*/server time-a-g.nist.gov/g' /etc/ntp.conf
sed -i 's/^server 18.*/server time-b-g.nist.gov/g' /etc/ntp.conf
sed -i 's/^server 128.*/server time-c-g.nist.gov' /etc/ntp.conf
