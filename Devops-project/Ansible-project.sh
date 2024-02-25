# Create a directory for your Ansible project and navigate into it

  mkdir ~/my_ansible_project && cd ~/my_ansible_project

# Create a hosts file (this is where you list the servers that Ansible will manage)
  
  nano hosts

# In the hosts file, add your servers. For example
  
[webservers]
192.168.1.10
192.168.1.11

[dbservers]
192.168.1.20
192.168.1.21

# Test the connection to your servers
  
  ansible -i hosts -m ping all


  
