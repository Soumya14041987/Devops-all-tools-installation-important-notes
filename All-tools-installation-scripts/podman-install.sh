# Update your package lists

  sudo apt update

# Install Podman
  sudo apt install podman -y

# Verify the installation by checking the Podman version
  podman -v

# Open the Podman registry configuration file
  nano /etc/containers/registries.conf

# Add the following lines to the file
  [registries.search]
  registries=["registry.access.redhat.com", "registry.fedoraproject.org", "docker.io"]

# Now, you can search and download images from the web. For example, to search a Debian image, run the following command
  podman search debian 
