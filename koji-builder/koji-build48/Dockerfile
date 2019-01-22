From neokylin7.4-koji-builder:7
COPY run.sh /
RUN yum install -y koji-builder wget 
RUN wget http://10.1.110.123/docker/pki_koji_232.xz && tar -Jxvf pki_koji_232.xz && sh run.sh
RUN systemctl enable kojid
CMD ['--privileged','/usr/sbin/init','-n koji-build48']
#CMD ['-n koji-build48']
#CMD ['/usr/sbin/init']
#CMD ['--privileged']




