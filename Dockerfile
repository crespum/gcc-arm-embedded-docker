FROM ubuntu:18.04

RUN mkdir /builds && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y make cmake zip wget git doxygen graphviz && \
    wget -O archive.tar.bz2 "https://developer.arm.com/-/media/Files/downloads/gnu-rm/8-2018q4/gcc-arm-none-eabi-8-2018-q4-major-linux.tar.bz2?revision=d830f9dd-cd4f-406d-8672-cca9210dd220?product=GNU%20Arm%20Embedded%20Toolchain,64-bit,,Linux,8-2018-q4-major" && \
    tar xf archive.tar.bz2 && \
    cd /usr/bin && cp -rs /gcc-arm-none-eabi-8-2018-q4-major/bin/arm-none-eabi-* . && \
    apt-get autoclean -y && \
    apt-get autoremove -y && \
    apt-get clean

WORKDIR /builds
