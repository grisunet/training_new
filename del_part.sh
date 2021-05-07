!/bin/bash


#### Delete beegfs directories ##
rm -r /etc/beegfs
rm -r /opt/beegfs
rm -r /var/log/bee*
	 
### delete partitions on given drives ###
/bin/dd if=/dev/zero of=/dev/nvme1n1 count=1000 bs=1MB conv=noerror
/bin/dd if=/dev/zero of=/dev/nvme2n1 count=1000 bs=1MB conv=noerror

#### Uninstall beegfs packages ####
for c in `/bin/yum list installed | grep bee | awk '{ print $1 }'`
do
        /bin/yum remove $c -y
        #echo $c
done
