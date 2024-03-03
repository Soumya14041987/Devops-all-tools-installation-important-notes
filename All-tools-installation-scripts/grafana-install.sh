# Step 1: Download deb package for Grafana

wget https://dl.grafana.com/enterprise/release/grafana-enterprise_8.1.5_amd64.deb

# Step 2: Install Grafana

sudo dpkg -i grafana-enterprise_8.1.5_amd64.deb

# Step 3: Start and enable Grafana on the server

sudo systemctl start grafana-server
sudo systemctl enable grafana-server

# Step 4: Check the status of Grafana

sudo systemctl status grafana-server

# Step 5: Expose the Grafana server 

http://<your_server_ip>:3000


