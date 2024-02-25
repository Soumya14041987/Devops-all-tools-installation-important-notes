# Create a new file called install_nginx.yml

nano install_nginx.yml

# Syntax of install_nginx.yml file 

---
- name: Install Nginx
  hosts: webservers
  become: yes
  tasks:
    - name: Install Nginx
      apt:
        name: nginx
        state: present

# Save & close this .

# Run the playbook 

  ansible-playbook -i hosts install_nginx.yml




