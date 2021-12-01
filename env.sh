#!/bin/bash

module load PrgEnv-gnu
module load cmake
module load ninja

root=$MEMBERWORK/chm137/rocm-build
export ROCM_INSTALL_DIR=$root/install
export ROCM_GIT_DIR=$root/rocm
export ROCM_BUILD_DIR=$root/build
export ROCM_PATCH_DIR=$root/patch
export AMDGPU_TARGETS="gfx908"
export CMAKE_DIR=$root/cmake-3.16.8-Linux-x86_64
export PATH="$root/repo:$ROCM_INSTALL_DIR/bin:$ROCM_INSTALL_DIR/llvm/bin:$ROCM_INSTALL_DIR/hip/bin:$CMAKE_DIR/bin:$PATH"

