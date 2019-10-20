---
title: Installing Anaconda
linktitle: Installing
toc: true
type: docs
draft: false
menu:
  data-science:
    parent: Anaconda
    weight: 1

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1
---

- [Documentation](https://docs.anaconda.com/anaconda/install/linux/)
- [Installer for Linux](https://www.anaconda.com/distribution/#linux)

```
bash ~/Downloads/Anaconda3-2019.03-Linux-x86_64.sh

conda update conda
conda update anaconda
```

## Change kernel in jupyter

Base environment needs the nb\_conda\_kernels package.
Every environment needs the ipykernel package.

```
conda install nb_conda_kernels
```

## Deep learning environment

Prereq:

```
sudo apt-get install libhdf5-serial-dev # for saving keras models efficiently

sudo apt install graphviz
```

```
conda create -n deeplearn
source activate deeplearn

conda install tensorflow-gpu

conda install matplotlib yaml
conda install opencv # needed for some examples
conda install pydot # graphviz
conda install pillow # python imaging library

conda install cython # Why?

conda install keras-gpu

conda install ipykernel # for kernel selection in jupyter
```

## Deeplearn Tensorflow 2.0

https://www.tensorflow.org/install/gpu

```
conda install pip

pip install tensorflow-gpu
pip install tensorflow-datasets

pip install matplotlib PyYAML opencv-python pydot pillow cython
```

## Check tensorflow and keras gpu

```
import tensorflow as tf
tf.test.is_gpu_available(
    cuda_only=False,
    min_cuda_compute_capability=None
)

from keras import backend as K
K.tensorflow_backend._get_available_gpus()
```
## Archived

- [Install TensorFlow with GPU Support the Easy Way](https://www.pugetsystems.com/labs/hpc/Install-TensorFlow-with-GPU-Support-the-Easy-Way-on-Ubuntu-18-04-without-installing-CUDA-1170/)
