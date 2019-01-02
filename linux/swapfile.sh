#!/bin/bash
#https://linuxize.com/post/create-a-linux-swap-file/
echo "Create 4G Swapfile"
fallocate -l 4G /swapfile
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
free -h
