#!/bin/sh

: ${BUILD_VERSION:="v$(date +'%Y%m%d')"}
export BUILD_VERSION

# 定义CentOS默认版本
CENTOS_VERSION=${1-7.3}

rm -i builds/*-${BUILD_VERSION}.box
packer build CentOS-${CENTOS_VERSION}.json
shasum -a 256 builds/*-${BUILD_VERSION}.box
