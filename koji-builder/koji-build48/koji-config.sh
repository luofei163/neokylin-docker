#!/bin/bash
echo '''
[kojid]
sleeptime=15
maxjobs=10
minspace=8192
topdir=/mnt/koji
workdir=/tmp/koji
mockdir=/var/lib/mock
mockuser=kojibuilder
vendor=CS2C
packager=NeoKylin Linux
distribution=CS2C
server=http://10.1.123.232/kojihub
topurl=http://10.1.123.232/kojifiles
allowed_scms=scm.example.com:/cvs/example git.example.org:/example svn.example.org:/users/*:no
smtphost=example.com
from_addr=Koji Build System <buildsys@example.com>
cert = /etc/pki/koji/kojibuilder48.pem
ca = /etc/pki/koji/koji_ca_cert.crt
serverca = /etc/pki/koji/koji_ca_cert.crt
''' > /etc/kojid/kojid.conf 

