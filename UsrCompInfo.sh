#!/bin/bash

user=$(whoami)
date=$(date)
presentDiro=$(pwd)
privateIP=$(ipconfig getifaddr en0)

espeak "Hi $user" ; echo "You are currently 
logged 
in as $user."
printf "\n"

echo "Today's date is $date"
echo "Your present working directory is $presentDiro"
printf "\n"

sleep 2

echo "Now some Software info about Your Machine"
read -p "For detailed info type 'd' and for compact 
info type 'c': " info
printf "\n"

if [ $info = "d" ]||[ $info = "D" ]
then
system_profiler SPSoftwareDataType
else
sw_vers
printf "\n"
fi

echo "Your private or local IP Address is : $privateIP"
printf "\n"
echo "Your public or internet IP address is : $(wget -qO- http://ipecho.net/plain | xargs echo)"
