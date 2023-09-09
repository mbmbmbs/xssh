#!/bin/bash

service ssh start

./frpc -c ./frpc.ini
