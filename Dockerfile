FROM       phusion/baseimage:0.10.1
#FROM      kenneyhe/ubuntu-slim:0.1

RUN       apt-get update && apt-get install wget curl bash -y

WORKDIR   /tmp

RUN       wget -qO- http://get.docker.com/ | sh && \
          usermod -aG docker root

RUN       curl -L https://releases.hashicorp.com/vagrant/2.0.3/vagrant_2.0.3_x86_64.deb -O && \
          dpkg -i vagrant_2.0.3_x86_64.deb && \
          rm -f vagrant_2.0.3_x86_64.deb && \
          vagrant version && \
          rm -r /var/lib/apt/lists/*

RUN       vagrant plugin install vagrant-share && \
          vagrant plugin install vagrant-cachier

VOLUME    /app

WORKDIR   /app

CMD       ["/bin/bash"]
