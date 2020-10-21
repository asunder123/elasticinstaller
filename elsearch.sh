#!/usr/bin/bash
echo "Autoremoveelsearch"
sudo apt autoremove elasticsearch | sudo 
echo"Check Java version"
sudo java -version
echo "Path is ...\n"
echo $PATH
echo "Updating Ubuntu directories......\n"
sudo apt update
echo "Installing Java 8.......\n"
JDK_TYPE="openjdk-8-jdk"
sudo apt install '$JDK_TYPE'
echo "Installing https transport layer.....\n"
sudo apt install apt-transport-https
echo "Add Elastic Search key......\n"
ELASTIC_SEARCH="https://artifacts.elastic.co/GPG-KEY-elasticsearch"
sudo   wget -qO - $ELASTIC_SEARCH | sudo apt-key add -
echo "Install stable package sources!"
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list
echo "Update......\n"
sudo apt update
echo "Install elastic search ....\n"
sudo apt install elasticsearch
sudo systemctl daemon-reload
echo "Elastic search service.....\n"
sudo systemctl enable elasticsearch.service
echo "Check ssh status...\n"
sudo systemctl status ssh
echo "Start elastic search...\n"
sudo systemctl service elasticsearch start
sudo ps
