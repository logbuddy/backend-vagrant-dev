#!/usr/bin/env bash

apt-get update -y
apt-get upgrade -y
add-apt-repository -y multiverse
apt-get install -y virtualbox-guest-dkms virtualbox-guest-x11
apt-get install -y nodejs npm mc python3-pip docker.io docker-compose locate
apt-get install -y nfs-kernel-server

usermod -a -G docker vagrant

ln -sf /usr/bin/pip3 /usr/local/bin/pip
ln -sf /usr/bin/python3 /usr/local/bin/python

sudo -i vagrant curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
sudo -u vagrant pip install localstack awscli awscli-local
sudo -u vagrant mkdir -p /home/vagrant/.localstacktmp /home/vagrant/.aws

# todo: ssh keygen
# nvm i
# nvm use
# npm i
# npm run start