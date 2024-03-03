# Update Your System

sudo apt update
sudo apt upgrade -y

# Once all the updates are installed then reboot your system.

sudo reboot

# Install Docker

  sudo apt install ca-certificates curl gnupg wget apt-transport-https -y
  sudo install -m 0755 -d /etc/apt/keyrings
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
  sudo chmod a+r /etc/apt/keyrings/docker.gpg
  echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  sudo apt update

# Install docker by running the following command.

  sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Add your local user to docker group so that your local user run docker commands without sudo
   sudo usermod -aG docker $USER
   newgrp docker

# Download and Install Minikube Binary
  
  curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
  sudo install minikube-linux-amd64 /usr/local/bin/minikube

  minikube version

# Install Kubectl tool
  
  curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linu  x/amd64/kubectl

# Set the executables perimission on it & move to /usr/local/bin
    chmod +x kubectl
    sudo mv kubectl /usr/local/bin/

# Verify the kubectl version, run
   kubectl version -o yaml

  


