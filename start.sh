#!/bin/bash
source /app/config.sh

service ssh start

frpc -c frpc.ini
