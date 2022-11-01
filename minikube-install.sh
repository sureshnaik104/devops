sudo apt-get update
sudo apt-get install docker.io 
sudo groupadd docker
sudo usermod -aG docker $USER
sudo chmod 666 /var/run/docker.sock
ls -l /lib/systemd/system/docker.socket
sudo su $USER  -c groups
sudo chgrp $USER /lib/systemd/system/docker.socket
sudo chmod g+w /lib/systemd/system/docker.socket
sudo chmod 666 /var/run/docker.sock
docker ps -a
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/bin
curl -LO https://github.com/kubernetes/minikube/releases/download/v1.24.0/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
sudo apt-get install conntrack -y
minikube start --driver=docker
