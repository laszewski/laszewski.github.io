#
# UBUNTU 19.10
#
FROM ubuntu:20.04

MAINTAINER Gregor von Laszewski <laszewski@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

#
# UPDATE THE SYSTEM
#
RUN apt-get -y update --fix-missing
RUN apt-get -y dist-upgrade
RUN apt-get install -y --no-install-recommends apt-utils

#
# DEVELOPMENT TOOLS
#
RUN apt-get install -y build-essential checkinstall --fix-missing
RUN apt-get install -y lsb-core
RUN apt-get install -y dnsutils
RUN apt-get install -y libssl-dev
RUN apt-get install -y libffi-dev
RUN apt-get install -y libreadline-gplv2-dev
RUN apt-get install -y libncursesw5-dev
RUN apt-get install -y libsqlite3-dev
RUN apt-get install -y libgdbm-dev
RUN apt-get install -y libc6-dev
RUN apt-get install -y libbz2-dev
RUN apt-get install -y libffi-dev
RUN apt-get install -y zlib1g-dev
RUN apt-get install -y libpng-dev

RUN apt-get install -y git-core
RUN apt-get install -y git

RUN apt-get install -y wget
RUN apt-get install -y curl
RUN apt-get install -y rsync

RUN apt-get install -y graphviz

#
# emacs
#
RUN apt-get install -y emacs-nox


#
# INSTALL PYTHON 3.8 FROM SOURCE
#

WORKDIR /usr/src

RUN wget https://www.python.org/ftp/python/3.9.7/Python-3.9.7.tgz
RUN tar xzf Python-3.9.7.tgz

WORKDIR /usr/src/Python-3.9.7

RUN ./configure --enable-optimizations

RUN make altinstall


#RUN apt-get autoremove

#RUN apt-get install -y python3.8
# RUN apt-get install python3-distutils
# RUN apt-get install python3-setuptools
# RUN easy_install3 pip
#RUN apt-get install -y python3-pip
#RUN pip3 install --upgrade pip setuptools


RUN update-alternatives --install /usr/bin/python python /usr/local/bin/python3.9 10
RUN update-alternatives --config python

RUN update-alternatives --install /usr/bin/pip pip /usr/local/bin/pip3.9 10
RUN update-alternatives --config pip

RUN yes '' | update-alternatives --force --all


ENV PATH="/usr/local/bin:${PATH}"

RUN python3.9 --version
RUN python --version
RUN pip install -U pip
RUN pip --version

#
# go
#

WORKDIR /tmp
RUN wget https://golang.org/dl/go1.17.1.linux-amd64.tar.gz
RUN rm -rf /usr/local/go && tar -C /usr/local -xzf go1.17.1.linux-amd64.tar.gz

ENV PATH=$PATH:/usr/local/go/bin

#
# LaTeX and Co
#
RUN apt-get -y install biber
RUN apt-get install texlive-full -y

#
# INSTALL PANDOC
#           
WORKDIR /tmp
RUN wget https://github.com/jgm/pandoc/releases/download/2.14.2/pandoc-2.14.2-1-amd64.deb
RUN apt-get install ./pandoc-2.14.2-1-amd64.deb
RUN pandoc --version

#RUN mv pandoc-crossref /usr/local/bin

#
# hugo
#
WORKDIR /tmp
RUN wget https://github.com/gohugoio/hugo/releases/download/v0.88.1/hugo_extended_0.88.1_Linux-64bit.deb
RUN dpkg -i ./hugo_extended_0.88.1_Linux-64bit.deb


# WORKDIR /usr/local/code
# RUN git clone https://github.com/cyberaide/bookmanager.git
# WORKDIR /usr/local/code/bookmanager
# RUN pip install -e .

#
# SHELL SETUP
#
WORKDIR /root
COPY docker/.emacs /root/.emacs
COPY docker/.bashrc /root/.bashrc

#
# REPO WORKDIR
#

WORKDIR /root/laszewski.github.io
#ENTRYPOINT ["/bookmanager/bin/pull.sh"]

CMD [ "/bin/bash" ]



