#!/bin/bash
echo "Upgrading packages"
apt-get -y update
apt-get -y upgrade
echo "Doen upgrading packages"

echo "Installing OpenJDK 1.8"
apt-get update
apt install -y openjdk-8-jre-headless
echo "export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64" >> /etc/bash.bashrc
echo "Done Installing OpenJDK 1.8"

echo "Installing Tomcat 9"
apt-get install -y tomcat9

if netstat -tulpen | grep 8080
then
echo "Done installing Tomcat 9"
exit 0
fi