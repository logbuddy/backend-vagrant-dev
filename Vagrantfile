# -*- mode: ruby -*-
# vi: set ft=ruby :

#
# Requirements
#

# Virtualbox
# https://www.virtualbox.org/wiki/Downloads
# > VirtualBox 6.1.18 platform packages
# > VirtualBox 6.1.18 Oracle VM VirtualBox Extension Pack

# Vagrant
# https://www.vagrantup.com/downloads

#
# Handling
#

# First start: vagrant up
# Rreconfig: vagrant reload --provision
# Destroy: vagrant destroy
# SSH: vagrant ssh

#
# Localstack
#

# vagrant ssh
# HOSTNAME=dev env TMPDIR=.localstacktmp localstack start --docker

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/focal64"

  config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.provision "file", source: "./files/aws/cli/credentials", destination: "$HOME/.aws/"
  config.vm.provision "file", source: "./files/aws/cli/config", destination: "$HOME/.aws/"
  config.vm.provision "file", source: "./files/docker/docker-compose.yml", destination: "$HOME/"
  #config.vm.provision "file", source: "./files/start.sh", destination: "$HOME/"

  config.vm.network "private_network", type: "dhcp"
  config.vm.network "forwarded_port", guest: 4566, host: 4566

  config.vm.provision :shell, path: "./files/start.sh", run: 'always'

  config.vm.provider "virtualbox" do |v|
    v.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
  end

end
