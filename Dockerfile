FROM registry.cn-beijing.aliyuncs.com/lxk-test/lxk:v1

RUN apt-get update

RUN apt-get install -y git vim curl wget python lbzip2 xz-utils pkg-config zip tar python-pip && pip install --upgrade setuptools

RUN git clone --depth 1 https://chromium.googlesource.com/chromium/tools/depot_tools.git
