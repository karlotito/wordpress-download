#!/bin/bash -e
clear
echo "============================================"
echo "WordPress Download Script"
echo "============================================"
#download wordpress
curl -O https://wordpress.org/latest.tar.gz
#unzip wordpress
tar -zxvf latest.tar.gz
#change dir to wordpress
cd wordpress
#copy file to parent dir
cp -rf . ..
#move back to parent dir
cd ..
#remove files from wordpress folder
rm -R wordpress
#remove zip file
rm latest.tar.gz
echo "========================="
echo "Installation is complete."
echo "========================="

