#!/bin/bash

##### Clean all servers from beegfs remains ####
for i in `cat inv` ;
do 
	ssh -i awscloud.pem centos@$i -t "sudo /usr/local/bin/del_part.sh" ;
 done

