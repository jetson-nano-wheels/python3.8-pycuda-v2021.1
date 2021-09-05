#!/bin/bash

./init.sh
source venv/bin/activate
source jetson-nano-wheels/commons/envs.sh

pushd pycuda-2021.1
mv dist dist-$(date +'%Y-%m-%d-%H:%M:%S') 2>/dev/null
# pip wheel -vvv --no-use-pep517 --only-binary 'pyopencl' -w dist .
pip wheel -vvv -w dist .
popd
