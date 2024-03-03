# Start Minikube Cluster
   minikube start --driver=docker

# Minikube status

  minikube status

# Interact with Your Minikube Cluster

   kubectl get nodes
   kubectl cluster-info

# sample nginx deployment
   kubectl create deployment nginx-web --image=nginx
   kubectl expose deployment nginx-web --type NodePort --port=80
   kubectl get deployment,pod,svc

# Managing Minikube Addons
  minikube addons list

# In order to enable addons, run
   minikube addons enable dashboard
   minikube addons enable ingress

# Start the Kubernetes Dashboard 
   minikube dashboard

# Managing Minikube Cluster
   minikube stop
   minikube start

# delete the minikube cluster
  minikube delete
