# vagrant-docker-provider
Vagrant with docker provider. Tool can be used with docker container to run vagrant file and dockerfile with docker container of your choice. Hence no need for massive vagrant box download and load time is much faster.

How to use this image:

[![asciicast](https://asciinema.org/a/5rhyjj4jmskforp31bd8hkoud.png)](https://asciinema.org/a/5rhyjj4jmskforp31bd8hkoud)

## Example to build ubuntu 15.04 if /Users/Shared/vagrant-dockerplugin has your Vagrantfile and Dockerfile:

docker run --rm --net host -v /Users/Shared/vagrant-dockerplugin:/home -v /var/run/docker.sock:/var/run/docker.sock --name vagr -ti kenney/vagrant-docker-provider:0.5 /bin/bash

## Example to just run the vagrant container via ssh:

docker run --rm --net host -v /Users/Shared/vagrant-dockerplugin:/home -v /var/run/docker.sock:/var/run/docker.sock --name vagr -ti kenney/vagrant-docker-provider:0.5 /bin/bash -c "cd /home; vagrant up; vagrant ssh"
