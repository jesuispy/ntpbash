#!/bin/sh

#Use if, then, else statements, with grep & sed and to accept user input to edit server list
# if grep match the server XX enter in the /etc/ntp.conf fill it there is a match then an action is triggered if not nothing happens

if grep -q '^server 66' /etc/ntp.conf; then

#the read commands prompt user for server value input and is saved to a named variable
#the sed command matches the "server XX" value and then changes it inplace with a random value the user inputted
 
    read -p "Please enter a NTP server one:" ntpservera
    sed -i 's/^server 66.*/server '"$ntpservera"'/g' /etc/ntp.conf
#the else : does nothing    
  else
    :
fi

#second

if grep -q '^server 18' /etc/ntp.conf; then
  
    read -p "Please enter a second NTP server:" ntpserverb    
    sed -i 's/^server 18.*/server '"$ntpserverb"'/g' /etc/ntp.conf
   
  else
    :
fi

#last server

if grep -q '^server 128' /etc/ntp.conf; then
  
    read -p "Please enter a third NTP server:" ntpserverc
    
    sed -i 's/^server 128.*/server '"$ntpserverc"'/g' /etc/ntp.conf
       
  else
    :
fi
