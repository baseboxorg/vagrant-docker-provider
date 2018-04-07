FROM      ubuntu:16.04
RUN       apt-get update && apt-get install wget bash -y 
RUN       wget -qO /tmp/vagrant.deb https://releases.hashicorp.com/vagrant/2.0.3/vagrant_2.0.3_x86_64.deb
RUN       dpkg -i /tmp/vagrant.deb && rm -f /tmp/vagrant.deb
RUN       wget -qO- http://get.docker.com/ | sh
RUN       apt-get autoremove
RUN       usermod -aG docker root
RUN       vagrant version
RUN       vagrant plugin install vagrant-share
