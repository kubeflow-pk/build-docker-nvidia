FROM ubuntu:18.04

RUN distribution=$(. /etc/os-release;echo $ID$VERSION_ID) && \
curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add - && \
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list

RUN apt download libnvidia-container && \
apt download libnvidia-container-tools && \
apt download nvidia-container-toolkit && \
apt download nvidia-container-runtime && \
apt download nvidia-docker2

CMD ["echo","aa"]
