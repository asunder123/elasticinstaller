#!/bin/bash
echo "auto remove...\n"
sudo apt autoremove
echo"Check Java version"
java -version
echo "Path is ...\n"
echo $PATH
echo "Updating Ubuntu directories......\n"
sudo apt update
echo "Installing Java 8.......\n"
sudo apt install openjdk-8-jdk
echo "Installing https transport layer.....\n"
sudo apt install apt-transport-https
echo "Add Elastic Search key......\n"
sudo   wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
echo "Install stable package sources!"
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list
echo "Update......\n"
sudo apt update
echo "Install elastic search ....\n"
sudo apt install elasticsearch
echo "Status of ssh....\n"
sudo systemctl status ssh
echo "Daemon Reload ....\n"
sudo systemctl daemon-reload
echo "Elastic search service.....\n"
sudo systemctl enable elasticsearch.service
echo "Start elasticsearch service...\n"
sudo systemctl start elasticsearch.service
echo "start elastic search as a service...\n"
sudo systemctl start elasticsearch.service
sudo ps x |grep -v grep |grep -c "processname"
if answer = 0;  then 
	sudo systemctl start elasticsearch.service
if answer = 1; then 
	sudo reboot
if answer = 2;then
	sudo reboot	
