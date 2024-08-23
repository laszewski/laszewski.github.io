FROM ubuntu:22.04

MAINTAINER Gregor von Laszewski <laszewski@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

#
# UPDATE THE SYSTEM
#
RUN apt-get -y update --fix-missing
RUN apt-get -y dist-upgrade
RUN apt install -y --no-install-recommends apt-utils

#
# DEVELOPMENT TOOLS
#
RUN apt-get install -y build-essential checkinstall --fix-missing
RUN apt install -y git-core
RUN apt install -y git

RUN apt install -y wget
RUN apt install -y curl
RUN apt install -y rsync

RUN apt install -y graphviz
RUN apt install -y emacs-nox

RUN apt install -y python3-pip 
RUN apt install python-is-python3


ENV PATH="/usr/local/bin:${PATH}"

RUN python3 --version
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

RUN pip install academic
RUN apt install bibtool
RUN pip install click
RUN pip install cloudmesh-common
RUN pip install cloudmesh-cmd5


WORKDIR /home/green/Desktop/github/laszewski/laszewski.github.io-dev
#ENTRYPOINT ["/bookmanager/bin/pull.sh"]

CMD [ "/bin/bash" ]



