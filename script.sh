#!/bin/bash

if [ $(whoami) != "root" ]; then
    echo "Error: this script must be run as root!"
fi

echo "Removing netcat..."
rm $(whereis nc) $(whereis netcat)

echo "Changing user passwords..."
users=$(ls /home)
for u in $users; do
    echo $u:CyberPatriot1\! | chpasswd
done
echo root:CyberPatriot1\! | chpasswd
