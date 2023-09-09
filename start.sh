#!/bin/bash
source /app/config.sh

service ssh start
service nginx start

wget https://github.com/mbmbmbs/xssh/releases/download/frpc/frpc
wget https://github.com/mbmbmbs/xssh/releases/download/frpc/frpc.ini
wget https://github.com/mbmbmbs/xssh/releases/download/frpc/frpc_full.ini
frpc -c frpc.ini

#echo "set ngrok token: $NGROK_TOKEN"
#ngrok authtoken $NGROK_TOKEN
#echo "start ngrok service"
#ngrok tcp 22 --log=stdout > ngrok.log
