FROM ubuntu:18.04

RUN distribution=$(. /etc/os-release;echo $ID$VERSION_ID) && \
apt-get update && apt-get install -y curl && \
curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey |apt-key add - && \
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list |tee /etc/apt/sources.list.d/nvidia-docker.list

RUN apt download libnvidia-container && \
apt download libnvidia-container-tools && \
apt download nvidia-container-toolkit && \
apt download nvidia-container-runtime && \
apt download nvidia-docker2

CMD ["echo","aa"]
