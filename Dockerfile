FROM ubuntu:latest
MAINTAINER Johannes Bleier <johannes.bleier@student.kit.edu>

RUN apt-get update && apt-get -y upgrade && DEBIAN_FRONTEND=noninteractive apt-get -y install \
    git-core gcc-arm-none-eabi gdb-arm-none-eabi libnewlib-arm-none-eabi can-utils libusb-1.0-0-dev cmake \
    openocd sudo python python-serial protobuf-compiler libprotobuf-dev python-protobuf

