# Install Docker Dependencies

 sudo apt update
 sudo apt install ca-certificates curl gnupg -y

# Add Docker official APT Repository

  sudo install -m 0755 -d /etc/apt/keyrings
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
  sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Add the Docker repository to the system package resource

 echo \
"deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
"$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# As we install dependencies and repository it's time to install Docker on Ubuntu 22.04

  sudo apt update
  sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y


# Add local user to docker group so that user can run docker commands 

  sudo usermod -aG docker $USER
  newgrp docker

# Make sure you can logout & login after adding local user to docker group 

# Now check the Docker version

 docker version

# Now check the status of Docker 

sudo systemctl status docker

# Docker Compose Installation on Ubuntu 22.04

  sudo curl -L "https://github.com/docker/compose/releases/download/v2.20.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
  sudo chmod +x /usr/local/bin/docker-compose


