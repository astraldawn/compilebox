############################################################
# Dockerfile to build sandbox for executing user code
# Based on Ubuntu
############################################################

FROM ubuntu:xenial

# Update the repository sources list
RUN echo "deb http://archive.ubuntu.com/ubuntu trusty main universe" > /etc/apt/sources.list
RUN apt-get update

# python3.6 ppa
RUN apt-get install -y python-software-properties
RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:jonathonf/python-3.6
RUN apt-get update

#Install all the languages/compilers we are supporting.
RUN apt-get install -y python
RUN apt-get install -y python3.6

RUN apt-get install -y mysql-server

RUN apt-get install -y sudo
RUN apt-get install -y bc

RUN echo "mysql ALL = NOPASSWD: /usr/sbin/service mysql start" | cat >> /etc/sudoers

RUN apt-get install -y git

#Installing pip for 3.6
RUN apt-get install -y python3.6-dev python3.6-venv
RUN apt-get install -y wget
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python3.6 get-pip.py
# RUN ln -s /usr/bin/python3.6 /usr/local/bin/python3
RUN ln -s /usr/local/bin/pip /usr/local/bin/pip3

RUN git clone https://github.com/astraldawn/pylps
RUN cd pylps && git pull
RUN pip3 install -U pip
RUN pip3 --version
RUN cd pylps && pip3 install -r requirements.txt
RUN cd pylps && python3.6 setup.py develop
