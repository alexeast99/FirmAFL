# syntax=docker/dockerfile:1

FROM ubuntu:focal

RUN useradd -m -s /bin/bash -G sudo --home /home/alexeast alexeast
RUN mkdir /home/alexeast/workspace

RUN apt update
RUN apt upgrade -y
RUN apt install -y git build-essential make vim qemu
RUN git clone https://github.com/alexeast99/FirmAFL /home/alexeast/workspace/FirmAFL

# WORKDIR /home/alexeast/workspace/FirmAFL/user_mode
# RUN ./configure --target-list=arm-linux-user --static --disable-werror --python=python2
# RUN make

# WORKDIR /home/alexeast/workspace/FirmAFL/qemu_mode/DECAF_qemu_2.10
# RUN ./configure --target-list=arm-softmmu --disable-werror --python=python2
# RUN make