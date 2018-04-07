FROM      phusion/baseimage:0.10.1

RUN       apt-get update && apt-get install wget bash -y

#RUN       rm -f /etc/service/sshd/down && \
#          /etc/my_init.d/00_regen_ssh_host_keys.sh
#          /usr/sbin/enable_insecure_key && \
#          echo "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA6NF8iallvQVp22WDkTkyrtvp9eWW6A8YVr+kz4TjGYe7gHzIw+niNltGEFHzD8+v1I2YJ6oXevct1YeS0o9HZyN1Q9qgCgzUFtdOKLv6IedplqoPkcmF0aYet2PkEDo3MlTBckFXPITAMzF8dJSIFo9D8HfdOV0IAdx4O7PtixWKn5y2hMNG0zQPyUecp4pzC6kivAIhyfHilFR61RGL+GPXQ2MWZWFYbAGjyiYJnAmCP3NOTd0jMZEnDkbUvxhMmBYSdETk1rRgm+R4LOzFUGaHqHDLKLX+FIPKcF96hrucXzcWyLbIbEgE98OHlnVYCzRdK8jlqm8tehUc9c9WhQ== vagrant insecure public key" > /root/.ssh/authorized_keys

RUN       wget -qO /tmp/vagrant.deb https://releases.hashicorp.com/vagrant/2.0.3/vagrant_2.0.3_x86_64.deb && \
          dpkg -i /tmp/vagrant.deb && \
          rm -f /tmp/vagrant.deb && \
          wget -qO- http://get.docker.com/ | sh && \
          apt-get autoremove && \
          usermod -aG docker root && \
          vagrant version

#RUN       vagrant plugin install vagrant-share
#          vagrant plugin install vagrant-cachier

#Volume    /app

#WORKDIR   /app

#CMD       "/bin/bash"
