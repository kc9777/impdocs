FROM ubuntu
MAINTAINER "Kartheek Images & Containers"
RUN apt-get update
RUN apt-get install -y net-tools
RUN apt-get install -y openssh-server
RUN apt-get install -y vim
RUN useradd -m -d /home/paru -s /bin/bash paru
RUN echo "paru:paru" | chpasswd
RUN apt-get install sudo
ENTRYPOINT service ssh restart && bash
