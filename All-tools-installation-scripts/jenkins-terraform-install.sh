# Install Java :-

sudo apt-get update
sudo apt-get install fontconfig openjdk-11-jre

# Add Jenkins Repository

sudo apt-get update
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
    /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
    https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
    /etc/apt/sources.list.d/jenkins.list > /dev/null

# Install Jenkins

sudo apt-get update
sudo apt-get install jenkins

# Enable Jenkins

sudo systemctl enable jenkins

# Start Jenkins

sudo systemctl start jenkins

# Check Jenkins Status

sudo systemctl status jenkins

# Open Jenkins in browser 

http://your-machine-ip:8080

# Unlock Jenkins credentials 

sudo cat /var/lib/jenkins/secrets/initialAdminPassword

# Download Terraform

wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform


