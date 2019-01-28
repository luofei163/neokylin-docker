NAME="koji-build48"
cd $NAME 
echo $NAME
docker build -t $NAME .
cd ../
docker run --name $NAME -itd  --privileged --rm -v /var/mnt/koji_build_tmp:/var/lib/mock $NAME /usr/sbin/init
sleep 5
docker exec -it $NAME /bin/bash -c 'systemctl start kojid && systemctl restart kojid'


