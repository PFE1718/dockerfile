FROM ubuntu:17.10
RUN apt-get update &&\
    apt-get install -y sudo
RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo
RUN apt-get install -y -q git\
    python \
    python-dev \
    python-setuptools \
    python-virtualenv \
    python-gobject-dev \
    virtualenvwrapper \
    libtool \
    libffi-dev \
    libssl-dev \
    autoconf \
    automake \
    bison \
    swig \
    libglib2.0-dev \
    s3cmd \
    portaudio19-dev \
    mpg123 \
    screen \
    flac \
    curl \
    libicu-dev \
    pkg-config \
    automake \
    libjpeg-dev \
    libfann-dev
RUN git clone https://github.com/MycroftAI/mycroft-core.git
WORKDIR /mycroft-core
USER docker
RUN echo 'docker' | sudo -S su
RUN sudo ./dev_setup.sh --allow-root