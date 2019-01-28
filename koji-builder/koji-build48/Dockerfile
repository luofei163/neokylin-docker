From neokylin7.6:7
COPY system-config.sh /
RUN sh system-config.sh
RUN yum install -y koji-builder wget 
COPY koji-config.sh /
RUN wget http://10.1.110.123/docker/pki_koji_232.xz && tar -Jxvf pki_koji_232.xz && sh koji-config.sh
RUN systemctl enable kojid
CMD ['--privileged','/usr/sbin/init','-n koji-build48']
#CMD ['-n koji-build48']
#CMD ['/usr/sbin/init']
#CMD ['--privileged']




