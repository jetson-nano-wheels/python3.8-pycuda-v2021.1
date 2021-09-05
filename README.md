# python3.8-pycuda-2021.1

[PyCUDA 2021.1](https://github.com/inducer/pycuda/tree/v2021.1) for Python 3.8 running on the Nvidia Jetson Tegra.


## How to use

If you have `pip` (which should be run in a suitable virtual environment) the following should work. Note you will need to install Numpy and pyopencl as shown here.

```sh
pip install 'https://github.com/jetson-nano-wheels/python3.8-numpy-1.19.4/releases/download/v0.0.1/numpy-1.19.4-cp38-cp38m-linux_aarch64.whl'
pip install 'https://github.com/jetson-nano-wheels/python3.8-pyopencl-2021.2.6/releases/download/v0.0.1/pyopencl-2021.2.6-cp38-cp38m-linux_aarch64.whl'
pip install 'https://github.com/jetson-nano-wheels/python3.8-pycuda-2021.1/releases/download/v0.0.1/pycuda-2021.1-cp38-cp38m-linux_aarch64.whl'
```


## How to contribute

  1. [Fork this repo](https://github.com/jetson-nano-wheels/python3.8-pycuda-2021.1/fork)
  2. Add a branch for your new feature.
  3. Run the `init.sh` script.

Like this:

```sh
git clone git@github.com:jetson-nano-wheels/python3.8-pycuda-2021.1
cd python3.8-pycuda-2021.1
git checkout -b feature-my-fancy-addition
./init.sh
```

After that, do your edits, commit and push to your repo, and send a pull-request if you like 😃
