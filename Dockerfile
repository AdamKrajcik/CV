FROM ubuntu:xenial

RUN apt-get -qq update
RUN apt-get install -y --no-install-recommends texlive-full
RUN apt-get install -y --no-install-recommends texlive-moderncv
RUN apt-get install -y --no-install-recommends texlive-babel-slovak
RUN apt-get install -y make

COPY *.tex ./
COPY photo.jpg ./
COPY Makefile ./
CMD make cv 
