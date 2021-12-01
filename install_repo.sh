#!/bin/bash

set -e

mkdir -p repo
curl https://storage.googleapis.com/git-repo-downloads/repo > repo/repo
chmod a+rx repo/repo
