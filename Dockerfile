FROM ubuntu:18.04

RUN apt-get update 
RUN apt-get install -y curl
RUN apt-get install -y gnupg2
RUN curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey |apt-key add -
RUN curl -s -L https://nvidia.github.io/nvidia-docker/ubuntu18.04/nvidia-docker.list |tee /etc/apt/sources.list.d/nvidia-docker.list

RUN sed -i 's/$(ARCH)/amd64/g' /etc/apt/sources.list.d/nvidia-docker.list
RUN cat /etc/apt/sources.list.d/nvidia-docker.list
RUN apt-get update
RUN apt download libnvidia-container1
RUN apt download libnvidia-container-tools
RUN apt download nvidia-container-toolkit
RUN apt download nvidia-container-runtime
RUN apt download nvidia-docker2
#RUN apt-cache depends nvidia-docker2 
#RUN apt-get install --reinstall -d `apt-cache depends nvidia-docker2 | grep depends | cut -d: f2 |tr -d "<>"`
RUN mkdir docker-nvidia2 && mv *.deb docker-nvidia2/  && tar -czvf docker-nvidia2.tgz docker-nvidia2

CMD ["echo","aa"]
