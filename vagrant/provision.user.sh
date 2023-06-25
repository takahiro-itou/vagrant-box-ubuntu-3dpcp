#!/bin/bash  -xue

echo  "Provisioning ${HOSTNAME} : User ${USER}"

which  pip3
pip3  --version
pip3  install  open3d==0.14.1

git  clone  --recursive  \
    https://github.com/3d-point-cloud-processing/3dpcp_book_codes

history  -c
