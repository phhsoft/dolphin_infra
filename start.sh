#ssh -i "dolphin.pem" centos@ec2-52-82-54-38.cn-northwest-1.compute.amazonaws.com.cn


sudo yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine

sudo yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2

sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

sudo yum-config-manager --enable docker-ce-nightly

sudo yum-config-manager --enable docker-ce-test

sudo yum install docker-ce docker-ce-cli containerd.io

sudo systemctl start docker

sudo yum install openssh-clients

#sudo docker run -d --restart=unless-stopped -p 8080:8080 rancher/server:stable
