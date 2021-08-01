#Install Docker
yum install -y yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install -y docker-ce docker-ce-cli containerd.io
usermod -aG docker $(whoami)
systemctl enable docker
systemctl start docker

#Install Rancher
docker pull rancher/rancher:v2.5.9
docker run -d --restart=unless-stopped -p 443:443   -v /opt/rancher:/var/lib/rancher --privileged rancher/rancher:v2.5.9

