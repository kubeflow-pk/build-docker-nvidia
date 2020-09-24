FROM ubuntu:18.04

RUN apt-get update 
RUN apt-get install -y curl
RUN apt-get install -y gnupg2
RUN curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey |apt-key add -
RUN curl -s -L https://nvidia.github.io/nvidia-docker/ubuntu18.04/nvidia-docker.list |tee /etc/apt/sources.list.d/nvidia-docker.list

RUN apt-get update
RUN apt download libnvidia-container
RUN apt download libnvidia-container-tools
RUN apt download nvidia-container-toolkit
RUN apt download nvidia-container-runtime
RUN apt download nvidia-docker2

CMD ["echo","aa"]
