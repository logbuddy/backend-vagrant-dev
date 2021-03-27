# -*- mode: ruby -*-
# vi: set ft=ruby :

REPO_PATH = "p:/inkihh/poc"

#
# DON'T CHANGE ANYTHING BELOW
# unless you know what you're doing
#

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/focal64"

  config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.provision "file", source: "./files/aws/cli/credentials", destination: "$HOME/.aws/"
  config.vm.provision "file", source: "./files/aws/cli/config", destination: "$HOME/.aws/"
  config.vm.provision "file", source: "./files/docker/docker-compose.yml", destination: "$HOME/"

  config.vm.synced_folder REPO_PATH, "/src"

  config.vm.network "private_network", type: "dhcp"
  config.vm.network "forwarded_port", guest: 4566, host: 4566
  config.vm.network "forwarded_port", guest: 3000, host: 3000

  #config.vm.provision :shell, path: "./files/start.sh", run: 'always'

  config.vm.provider "virtualbox" do |v|
    v.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
    v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    v.memory = 8192
    v.cpus = 4
  end
end
