#!/bin/bash  -xue

echo  "Provisioning ${HOSTNAME} : User ${USER}"

which  pip3
pip3  --version
pip3  install  open3d==0.14.1

history  -c
