FROM      ubuntu:15.04
RUN       apt-get install curl -y                                                                                                              
RUN       curl -L https://releases.hashicorp.com/vagrant/1.9.1/vagrant_1.9.1_x86_64.deb -O
RUN       dpkg -i vagrant_1.9.1_x86_64.deb && rm -f vagrant_1.9.1_x86_64.deb
RUN       vagrant plugin install docker
RUN       curl https://get.docker.com/ | sh
RUN       apt-get autoremove
RUN       usermod -aG docker root
