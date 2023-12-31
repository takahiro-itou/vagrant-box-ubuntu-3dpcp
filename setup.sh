#! /bin/bash  -xue

box_file='ubuntu-3dpcp.box'
box_name='ubuntu-focal64-3dpcp'

# Account Name of Vagrant Cloud.
vcuser='takahiro-itou'

pushd  vagrant

vagrant  destroy -f  || exit $?
vagrant  up          || exit $?
vagrant  halt

vagrant  package   --output ../${box_file}  default

popd
set  +x

cat  << _EOF_  1>&2
To add package into box list, run:
_EOF_

cat  << _EOF_
vagrant  box  add  --name ${vcuser}/${box_name}  ${box_file}
_EOF_
