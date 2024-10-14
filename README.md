# libtorch-tutorial

This is a collection of exercises to learn libtorch, the C++ backend of Pytorch.
Most of us learned Pytorch in an interactive environment like Jupyter notebook. 
Such interactivity made learning tensor API a breeze! 
Now, we can do the same with C++. 


## Setup

All notebooks should be run on C++ kernel e.g. https://github.com/jupyter-xeus/xeus-cling 

`mamba` makes it easier to install necessary dependencies into an isolated environment. 

```bash
mamba create -n cling
mamba activate cling
mamba install xeus-cling jupyterlab -c conda-forge
```

_`mamba` is a C++ implementation of `conda`. To install `mamba`,_
```bash
name=Miniforge3-$(uname)-$(uname -m).sh
wget "https://github.com/conda-forge/miniforge/releases/latest/download/$name"
bash $name -b -p ~/mambaforge && ~/mambaforge/bin/mamba init bash && rm $name
```

**_Download libTorch_:**

The following script takes care of downloading libtorch and extracting under `libs` directory 
```
bash ./libs/setup.sh
```

## Lanuch Notebooks

```bash
mamba activate cling
jupyter-lab 
```


