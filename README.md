# backend-vagrant-dev

## Requirements

Virtualbox https://www.virtualbox.org/wiki/Downloads

> VirtualBox x.x.xx platform packages
>
> VirtualBox x.x.xx Oracle VM VirtualBox Extension Pack

Vagrant
https://www.vagrantup.com/downloads

## Setup

> git clone git@github.com:logbuddy/backend-vagrant-dev.git
> 
> cd backend-vagrant-dev
> 
> vagrant up

Localstack shoud start automatically:

> default: localstack_edge-commander | Ready.
>
> default: localstack_edge-commander | 2021-03-24T12:45:37:INFO:localstack.utils.analytics.profiler: Execution of "start_api_services" took 5794.617176055908ms

If you have to start it manually:
> vagrant ssh
> 
> localstack start