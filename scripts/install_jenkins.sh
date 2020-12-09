#!/bin/bash
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
cd /etc/yum.repos.d/
sudo curl -O https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo yum upgrade -y
sudo yum install java-1.8.0-openjdk-devel -y
sudo yum -y install jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins

