FROM ubuntu
MAINTAINER "My Images & Containers"
RUN apt-get update
RUN apt-get install -y net-tools
RUN apt-get install -y openssh-server
RUN apt-get install -y vim
RUN useradd -m -d /home/kelly -s /bin/bash kelly
RUN echo "kelly:kelly" | chpasswd
RUN apt-get install sudo
ENTRYPOINT service ssh restart && bash
