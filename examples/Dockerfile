FROM ubuntu:15.04 
RUN apt-get update
RUN apt-get install -y openssh-server
RUN mkdir -p /var/run/sshd
EXPOSE 22
RUN chmod 0755 /var/run/sshd
# Create and configure vagrant user
RUN useradd --create-home -s /bin/bash docker3
WORKDIR /home/docker3
# Configure SSH access
RUN mkdir -p /home/docker3/.ssh
RUN echo "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA6NF8iallvQVp22WDkTkyrtvp9eWW6A8YVr+kz4TjGYe7gHzIw+niNltGEFHzD8+v1I2YJ6oXevct1YeS0o9HZyN1Q9qgCgzUFtdOKLv6IedplqoPkcmF0aYet2PkEDo3MlTBckFXPITAMzF8dJSIFo9D8HfdOV0IAdx4O7PtixWKn5y2hMNG0zQPyUecp4pzC6kivAIhyfHilFR61RGL+GPXQ2MWZWFYbAGjyiYJnAmCP3NOTd0jMZEnDkbUvxhMmBYSdETk1rRgm+R4LOzFUGaHqHDLKLX+FIPKcF96hrucXzcWyLbIbEgE98OHlnVYCzRdK8jlqm8tehUc9c9WhQ== vagrant insecure public key" > /home/docker3/.ssh/authorized_keys
RUN chown -R docker3: /home/docker3/.ssh
RUN echo -n 'docker3:docker3' | chpasswd
# Enable passwordless sudo for the "docker3" user
RUN mkdir -p /etc/sudoers.d
RUN echo 'docker3 ALL=NOPASSWD: ALL' > /etc/sudoers.d/docker3
CMD /usr/sbin/sshd -D -o UseDNS=no -o UsePAM=no
