# Minimal Docker image for RAxML-NG using Alpine base
FROM alpine:3.13.5
MAINTAINER Niema Moshiri <niemamoshiri@gmail.com>

# install RAxML-NG
RUN apk update && \
    apk add bash bison cmake flex g++ gcc git gmp-dev make && \
    git clone --recursive https://github.com/amkozlov/raxml-ng.git && \
    cd raxml-ng && \
    mkdir build && \
    cd build && \
    cmake .. && \
    make && \
    make install && \
    cd ../.. && \
    rm -rf raxml-ng
