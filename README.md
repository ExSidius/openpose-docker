# openpose-docker
Dockerfile to build the excellent OpenPose software from CMU.

Ensure that you have `nvidia-docker` installed before you download this image.

To run the container, use the following commmand - 

```bash
docker run --net=host -e DISPLAY --runtime=nvidia <container-id>
```
