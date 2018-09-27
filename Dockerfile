FROM ubuntu:18.04
LABEL name=docker-arm-build version=latesLABEL name=docker-arm-build version=latest

RUN apt-get update && apt-get -y upgrade && DEBIAN_FRONTEND=noninteractive apt-get -y install \
    git-core gcc-arm-none-eabi gdb-multiarch libnewlib-arm-none-eabi can-utils libusb-1.0-0-dev cmake \
    openocd sudo python python-serial protobuf-compiler libprotobuf-dev python-protobuf

# software to compile Arduino code
RUN apt-get update && apt-get -y upgrade && DEBIAN_FRONTEND=noninteractive apt-get -y install \
    build-essential gcc-avr avr-libc doxygen graphviz
