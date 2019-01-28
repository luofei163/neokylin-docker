#!/bin/bash
echo '''
[ns7-adv-os]
name=NeoKylin Linux Advanced Server 7 - Os
baseurl=http://10.1.123.232/kojifiles/repos/ns7.6-atomic-build/latest/x86_64/
gpgcheck=0
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-neokylin-release
enabled=1
''' > /etc/yum.repos.d/ns7-adv.repo

