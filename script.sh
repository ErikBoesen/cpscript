#!/bin/bash

if [ $(whoami) != "root" ]; then
    echo "Error: this script must be run as root!"
    exit 1
fi

echo "Removing netcat..."
rm $(whereis nc) $(whereis netcat)

echo "Changing user passwords..."
users=$(ls /home)
for u in $users; do
    echo $u:CyberPatriot1\! | chpasswd
done
echo root:CyberPatriot1\! | chpasswd

# https://github.com/ErikBoesen/cpscript
