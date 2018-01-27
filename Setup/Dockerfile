############################################################
# Dockerfile to build sandbox for executing user code
# Based on Ubuntu
############################################################

FROM chug/ubuntu14.04x64
MAINTAINER ASAD MEMON, OSMAN ALI

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
RUN apt-get install -y python3-pip

RUN apt-get install -y mysql-server

RUN apt-get install -y sudo
RUN apt-get install -y bc

RUN echo "mysql ALL = NOPASSWD: /usr/sbin/service mysql start" | cat >> /etc/sudoers

RUN apt-get install -y git
RUN apt-get install -y python-pip
RUN git clone https://github.com/astraldawn/pylps
RUN cd pylps && git pull
RUN pip install -U pip
RUN cd pylps && pip install -r requirements.txt
RUN python3.6 setup.py develop
