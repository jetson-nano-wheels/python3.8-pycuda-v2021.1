#!/bin/bash

# PyCUDA uses pyopencl which in turn requires this:
sudo apt-get install ocl-icd-opencl-dev

sudo apt-get install libboost-all-dev libboost-python-dev

if [[ ! -d venv ]] ; then
    python3.8 -m venv venv
    source venv/bin/activate
    pip install --upgrade pip setuptools wheel build
else
    source venv/bin/activate
fi

if [[ ! -d jetson-nano-submodules ]] ; then
    git submodule add git@github.com:jetson-nano-wheels/commons jetson-nano-wheels/commons
fi

source jetson-nano-wheels/commons/envs.sh

pip install mako numpy pybind11

# Note, ensure this uses the Numpy installed in the previous steps.
pip install --verbose pyopencl==2021.2.6

# Don't fetch the zip file for pycuda, instead fetch the git repo
# specifying the appropriate branch/tag. When followed by updating the
# submodules, this ensures all the necessary files are fetched, i.e.
# those in bpl-subset and pycuda/compyte.
mv pycuda-2021.1 pycuda-2021.1-$(date +'%Y-%m-%d-%H:%M:%S') 2>/dev/null
git clone --depth 1 --branch v2021.1 https://github.com/inducer/pycuda pycuda-2021.1

pushd pycuda-2021.1

git submodule update --init --recursive

python configure.py

# python configure.py --no-use-shipped-boost
# This shouldn't be necessary, but seems to be.
# sed -i'.bak' 's/"USE_SHIPPED_BOOST", True/"USE_SHIPPED_BOOST", False/' setup.py

popd
