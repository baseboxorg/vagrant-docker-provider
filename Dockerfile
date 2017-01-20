FROM      ubuntu:latest
RUN       apt-get install curl -y                                                    
RUN       mkdir /downloads                                                            
RUN       cd /downloads                                                               
RUN       curl -L https://releases.hashicorp.com/vagrant/1.9.1/vagrant_1.9.1_x86_64.deb -O
RUN       dpkg -i vagrant_1.9.1_x86_64.deb && rm -f vagrant_1.9.1_x86_64.deb
RUN       apt-get autoremove    
