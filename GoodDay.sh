#!/bin/bash

user=$(whoami)
date=$(date)
presentDiro=$(pwd)
privateIP=$(ipconfig getifaddr en0)

echo "You are currently logged in as $user."
echo "Today's date is $date"
echo "Your present working directory is $presentDiro"
echo ""
echo "Your private or local IP Address is : $privateIP"
echo ""
echo "Your public or internet IP address is :"
echo $(curl ifconfig.co)
