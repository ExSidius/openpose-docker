# openpose-docker

Dockerfile to build the excellent [OpenPose](https://github.com/CMU-Perceptual-Computing-Lab/openpose) software from CMU.

## Prerequisites

Ensure that you have the latest version of Docker installed. For versions prior to 19.03, you may need to install `nvidia-docker`. Read more [here](https://github.com/NVIDIA/nvidia-docker).

## Getting Started

Pull the image from Docker Hub -

```
$ docker pull exsidius/openpose
```

To run the container (name given: `openpose`), use the following commmands -

```
$ docker stop openpose && docker rm openpose
$ docker run -it \
        --gpus all \
        --name openpose \
        exsidius/openpose
```

Now, you should be inside the interactive docker container, i.e.  
`root@<hash>:/openpose# `

_Note_: Remove the `--gpus all` flag if you want to run the container without GPUs.

### Supports

1. CUDA 10
2. cuDNN 7
3. Python 3.5.2 (will be 3.7 soon)
