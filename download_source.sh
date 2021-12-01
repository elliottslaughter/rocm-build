#!/bin/bash

set -e

root=$HOME/spock/rocm-build
export ROCM_GIT_DIR=$root/rocm

mkdir -p $ROCM_GIT_DIR
cd $ROCM_GIT_DIR
repo init -u https://github.com/RadeonOpenCompute/ROCm.git -b roc-4.5.x
repo sync
