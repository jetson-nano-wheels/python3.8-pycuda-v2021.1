#!/bin/bash

./init.sh
source venv/bin/activate

source jetson-nano-wheels/commons/envs.sh

PIP_CONSTRAINT=constraints.txt \
  pip wheel -vv -c constraints.txt --no-deps \
  --no-binary pycuda \
  -w dist \
  pycuda
