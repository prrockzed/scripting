#!/bin/bash

user=$(whoami)
date=$(date)

echo "You are currently logged in as $user."
echo "Today's date is $date"
ipaddr=$(curl ifconfig.me --output -)
