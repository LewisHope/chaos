#!/bin/bash
#myIp=`hostname -i`
#consulServer=${myIp%.*}".1:8500"
consulServer=`cat /home/work/kickoff_sign_file`":8500"
consul-template -consul=$consulServer -template "/home/work/nginx.conf:/home/work/nginx/conf/nginx.conf:/home/work/nginx/sbin/nginx -s reload"
