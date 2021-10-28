#!/bin/bash

set -e

mkdir -p $ROCM_BUILD_DIR/rocm-core
cd $ROCM_BUILD_DIR/rocm-core
pushd .

START_TIME=`date +%s`

cp -R ../../meta/rocm-core_4.5.0.40500-75_amd64 .

dpkg -b rocm-core_4.5.0.40500-75_amd64

sudo dpkg -i *.deb

END_TIME=`date +%s`
EXECUTING_TIME=`expr $END_TIME - $START_TIME`
echo "elapse : "$EXECUTING_TIME"s"

popd

