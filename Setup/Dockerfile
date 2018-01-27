############################################################
# Dockerfile to build sandbox for executing user code
# Based on Ubuntu
############################################################

FROM chug/ubuntu14.04x64
MAINTAINER ASAD MEMON, OSMAN ALI

# Update the repository sources list
RUN echo "deb http://archive.ubuntu.com/ubuntu trusty main universe" > /etc/apt/sources.list
sudo add-apt-repository -y ppa:jonathonf/python-3.6
RUN apt-get update
#RUN apt-get upgrade

#Install all the languages/compilers we are supporting.
RUN apt-get install -y gcc
RUN apt-get install -y g++

RUN apt-get install -y python
RUN apt-get install -y python3.6

RUN apt-get install -y mysql-server

# RUN apt-get install -y curl

RUN apt-get install -y sudo
RUN apt-get install -y bc

RUN echo "mysql ALL = NOPASSWD: /usr/sbin/service mysql start" | cat >> /etc/sudoers

