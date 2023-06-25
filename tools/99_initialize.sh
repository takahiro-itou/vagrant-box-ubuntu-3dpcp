#!/bin/bash  -xue

script_dir=$(dirname  "$0")
vagrant_dir="${script_dir}/../vagrant"

pushd "${vagrant_dir}"
mkdir -p /cygdrive/w/Vagrant/ubuntu-3dpcp/vagrant

time  vagrant destroy -f
time  vagrant up ; echo $?

popd
