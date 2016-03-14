#Docker for Mac

####Install Docker Toolbox (http://www.docker.com/products/docker-toolbox)
https://github.com/docker/toolbox/releases/download/v1.10.2/DockerToolbox-1.10.2.pkg

####Install dinghy (https://github.com/codekitchen/dinghy)
```shell
brew tap codekitchen/dinghy
brew install dinghy
```

####Create Docker host
```shell
dinghy create --provider virtualbox --memory=1024 --cpus=1
# optional params: dinghy create --memory=8192 --cpus=4 --provider=virtualbox
````

####Add eval to use dinghy by default on startup
###### Add line to .bashrc/.zshrc/ .oh-my-zsh/custom/setup.sh
```shell
echo 'eval "$(docker-machine env dinghy)"' >> $HOME/.zshrc
```

####Stop and remove the dinghy_http_proxy container
```shell
docker stop dinghy_http_proxy
docker rm dinghy_http_proxy
docker rmi codekitchen/dinghy-http-proxy
```

####Edit dinghy preferences to remove built in proxy and set name
```shell
sed -i "" "s/:proxy_disabled: false/:proxy_disabled: true/g" $HOME/.dinghy/preferences.yml
dinghy up
```

####Update /etc/hosts adding:
```shell
sudo echo "192.168.99.100 docker.local webapp.dockerdev.local redis db" >> /etc/hosts
```

#Docker for Ubuntu

####Install extras for aufs
```shell
sudo apt-get update
sudo apt-get install linux-image-extra-$(uname -r)
```

####Install Docker engine
```shell
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo echo "deb https://apt.dockerproject.org/repo ubuntu-wily main" > /etc/apt/sources.list.d/docker.list
sudo apt-get update
sudo apt-get purge lxc-docker
sudo apt get install policy docker-engine
```

####Add your user to docker group to allow non-sudo use
```shell
sudo usermod -aG docker your_username
```

####Start Docker engine at boot
```shell
sudo systemctl enable docker
```

####Install docker-machine (https://docs.docker.com/machine/)
```shell
curl -L https://github.com/docker/machine/releases/download/v0.6.0/docker-machine-`uname -s`-`uname -m` >/usr/local/bin/docker-machine
chmod +x /usr/local/bin/docker-machine
```

####Install docker-compose (https://docs.docker.com/compose/)
```shell
curl -L https://github.com/docker/compose/releases/download/1.6.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
```

####Update /etc/hosts to add db, redis
```shell
sudo echo "127.0.0.1 docker.local webapp.dockerdev.local redis db" >> /etc/hosts
```

#Common setup

#### Pull the base docker images from docker hub
```shell
docker pull ubuntu:14.04
docker pull postgres:9.5
docker pull gliderlabs/registrator:master
docker pull jgeiger/consul-server
docker pull jgeiger/haproxy-template
docker pull jgeiger/redis
docker pull jgeiger/rails
docker pull jgeiger/rails-integration
```
