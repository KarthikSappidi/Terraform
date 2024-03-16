#!/bin/bash

# update package
sudo apt update -y

# Install Docker
sudo apt-get install docker.io -y
sudo usermod -aG docker ubuntu
sudo chmod 777 /var/run/docker.sock

# Start SonarQube container
docker run -dt --name sonar -p 9000:9000 sonarqube:lts-community

# Sleep for 5 seconds
sleep 5

# Install JDK
sudo apt update -y
sudo apt install -y openjdk-11-jdk

# Sleep for 5 seconds
sleep 5

# Install Jenkins
sudo apt update -y
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins -y
sudo systemctl start jenkins
sudo systemctl enable jenkins

# Sleep for 5 seconds
sleep 5

# Install Trivy
sudo apt update -y
sudo apt-get install wget apt-transport-https gnupg lsb-release -y
wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | gpg --dearmor | sudo tee /usr/share/keyrings/trivy.gpg > /dev/null
echo "deb [signed-by=/usr/share/keyrings/trivy.gpg] https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -sc) main" | sudo tee -a /etc/apt/sources.list.d/trivy.list
sudo apt-get update
sudo apt-get install trivy -y

echo "Installation completed successfully."
