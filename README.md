# openpose-docker
Dockerfile to build the excellent OpenPose software from CMU.

At first, use this guides to install `nvidia-docker`:
1. [Install nvidia-container-toolkit](https://github.com/NVIDIA/nvidia-docker#ubuntu-160418042004-debian-jessiestretchbuster)
2. [Install nvidia-docker 2.0](https://github.com/nvidia/nvidia-docker/wiki/Installation-(version-2.0))

To run the container, use the following commmand:

```bash
sudo docker run -it --net=host -e DISPLAY --runtime=nvidia exsidius/openpose
```

Supports - 
1. CUDA 10
2. CUDnn 7
3. Python 3 (will be 3.7 soon)
