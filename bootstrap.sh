#!/usr/bin/env bash

apt-get update -y
apt-get upgrade -y
add-apt-repository -y multiverse
apt-get install -y virtualbox-guest-dkms virtualbox-guest-x11
apt-get install -y python3-pip docker.io docker-compose locate

usermod -a -G docker vagrant

ln -sf /usr/bin/pip3 /usr/local/bin/pip
ln -sf /usr/bin/python3 /usr/local/bin/python

sudo -u vagrant pip install localstack awscli awscli-local
sudo -u vagrant mkdir -p /home/vagrant/.localstacktmp /home/vagrant/.aws

