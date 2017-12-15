#!/bin/bash

set -x

SCRIPTDIR=$(cd $(dirname "$0") && pwd)
ROOTDIR="$SCRIPTDIR/../../"

cd $ROOTDIR

echo "Publishing kube-couchdb image"
./tools/travis/publish.sh openwhisk kube-couchdb latest docker/couchdb

echo "Publishing kube-routemgmt image"
./tools/travis/publish.sh openwhisk kube-routemgmt latest docker/routemgmt