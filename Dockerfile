FROM nvidia/cuda:10.0-cudnn7-devel-ubuntu16.04

RUN echo "Installing system dependencies..." && \
	apt-get -y --no-install-recommends update && \
	apt-get -y --no-install-recommends upgrade

RUN echo "Installing OpenPose dependencies..." && \
	apt-get install -y --no-install-recommends \
	build-essential \
	cmake \
	git \
	libatlas-base-dev \
	libprotobuf-dev \
	libleveldb-dev \
	libsnappy-dev \
	libhdf5-serial-dev \
	protobuf-compiler \
	libboost-all-dev \
	libgflags-dev \
	libgoogle-glog-dev \
	liblmdb-dev \
	pciutils \
	python3-setuptools \
	python3-dev \
	python3-pip \
	opencl-headers \
	ocl-icd-opencl-dev \
	libviennacl-dev \
	libopencv-dev && \
	python3 -m pip install \
	numpy \
	protobuf \
	opencv-python \
	libcanberra-gtk-module \
	libcanberra-gtk3-module

RUN echo "Downloading OpenPose" && \
	git clone https://github.com/CMU-Perceptual-Computing-Lab/openpose.git

RUN echo "Building OpenPose..." && \
	mkdir -p /openpose/build && \
	cd /openpose/build && \
	cmake .. && \
	make -j`nproc`

WORKDIR /openpose

CMD ["sleep", "infinity"]
