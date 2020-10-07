#!/bin/bash

echo "Installing OpenJDK 1.8"

apt-get update
apt install openjdk-8-jre-headless
echo "export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64" >> /etc/bash.bashrc

echo "Done Installing OpenJDK 1.8"