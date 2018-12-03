FROM ubuntu:18.04
LABEL name=docker-arm-build version=latesLABEL name=docker-arm-build version=latest

RUN apt-get update && apt-get -y upgrade && DEBIAN_FRONTEND=noninteractive apt-get -y install \
    git-core  gdb-multiarch can-utils libusb-1.0-0-dev cmake software-properties-common \
    openocd sudo python python-serial protobuf-compiler libprotobuf-dev python-protobuf

RUN add-apt-repository ppa:team-gcc-arm-embedded/ppa

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install gcc-arm-embedded

# software to compile Arduino code
# RUN apt-get update && apt-get -y upgrade && DEBIAN_FRONTEND=noninteractive apt-get -y install \
#    build-essential gcc-avr avr-libc doxygen graphviz
