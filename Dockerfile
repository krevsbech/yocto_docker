FROM ubuntu:16.04

RUN apt-get update && \
    apt-get -y upgrade

RUN apt-get install -y gawk wget git-core diffstat unzip texinfo gcc-multilib \
     build-essential chrpath socat
RUN apt-get install -y libsdl1.2-dev xterm
RUN apt-get install -y make xsltproc docbook-utils fop dblatex xmlto
RUN apt-get install -y python-git

RUN useradd -ms /bin/bash revsbech
USER revsbech