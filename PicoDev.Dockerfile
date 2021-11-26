FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
  && apt-get upgrade -y\
  && apt-get -y install wget \
  && apt-get -y install git \
  && apt-get -y install cmake gcc-arm-none-eabi libnewlib-arm-none-eabi build-essential python3.9 \
  && cd ~/ && mkdir pico && cd pico \
  && git clone -b master https://github.com/raspberrypi/pico-sdk.git \
  && cd pico-sdk \
  && git submodule update --init

WORKDIR /root/pico
ENV PICO_SDK_PATH=/root/pico/pico-sdk