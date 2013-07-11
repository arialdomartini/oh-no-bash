#!/bin/bash

EXPECTED_ARGS=2
E_BADARGS=65

if [ $# -lt $EXPECTED_ARGS ]
then
  echo "Usage: `basename $0` {remote-machine-ip-address} {shell-script}"
  exit $E_BADARGS
fi

REMOTE_SERVER=$1
SCRIPT=$2
shift
shift

ssh root@$REMOTE_SERVER 'bash -s' < $SCRIPT $@
