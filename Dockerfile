FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN mkdir /app/build

RUN apt-get update -yq && apt-get install -yq \
    build-essential \
    gcc \
    g++ \
    cmake \
    make \
    libpthread-stubs0-dev \
    git

WORKDIR /app

RUN git clone --recursive https://github.com/mmp/pbrt-v3/

WORKDIR /app/build
RUN cmake -G 'Unix Makefiles' ..
RUN /usr/bin/make -j8
RUN ./pbrt_test

RUN mkdir /execute-pbrt
WORKDIR /execute-pbrt

ENTRYPOINT sh ./render.sh
CMD main