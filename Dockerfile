FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN dpkg --add-architecture i386 && \
    apt-get update -y
RUN apt-get install -y --no-install-recommends \
        bc \
        build-essential \
        bzr \
        ca-certificates \
        cmake \
        cpio \
        cvs \
        file \
        g++-multilib \
        git \
        libc6:i386 \
        libncurses5-dev \
        locales \
        mercurial \
        python3 \
        python3-flake8 \
        python3-nose2 \
        python3-pexpect \
        qemu-system-arm \
        qemu-system-x86 \
        rsync \
        subversion \
        unzip \
        wget \
        && \
    apt-get -y autoremove --purge && \
    apt-get -y clean

# To be able to generate a toolchain with locales, enable one UTF-8 locale
RUN sed -i 's/# \(en_US.UTF-8\)/\1/' /etc/locale.gen && \
    /usr/sbin/locale-gen

RUN useradd -ms /bin/bash br-user && \
    chown -R br-user:br-user /home/br-user

USER br-user
VOLUME /home/br-user
WORKDIR /home/br-user
