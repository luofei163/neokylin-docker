# neokylin-docker
1. Configure yum.conf  
/etc/yum.repos.d/ns7-adv.repo  
[ns7.6]  
name=NeoKylin Linux Advanced Server 7 - Os  
baseurl=http://10.1.123.232/kojifiles/repos/ns7.6-atomic-build/latest/x86_64/  
gpgcheck=0  
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-neokylin-release  
enabled=1  
2. Install packages  
yum install atomic docker

3. Disable selinux  
setenforce 0  

4. Enable and start docker service  
systemctl enabled docker  
systemctl restart docker  

5. Create docker image  
sh  run.sh  -y /root/neokylin-docker/yum.conf neokylin7.6

Create docker image with other pkg
sh  run.sh -p "koji-builder" -y /root/neokylin-docker/yum.conf neokylin7.6-koji-builder

Run docker 
docker run -itd neokylin7.6:7 /bin/bash
docker attach xxxxxxx


6. Save docker image to local file
docker save neokylin7.6 -o neokylin7.6

Other machine import docker file
docker load -i neokylin7.6
