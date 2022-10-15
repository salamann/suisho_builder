#!/bin/bash

YANEURAOU_VERSION="7.50-wcsc32"
YANEURAOU_TARGET_CPU="AVX2"
NPROC="4"
SUISHO_NNUE="https://github.com/HiraokaTakuya/get_suisho5_nn/raw/f182be18a81e0277afa8a0c234e88b28fc584a1a/suisho5_nn/nn.bin"


mkdir suisho
curl -L ${SUISHO_NNUE} -o suisho/nn.bin

curl -LO https://github.com/yaneurao/YaneuraOu/archive/refs/tags/v${YANEURAOU_VERSION}.tar.gz 
tar xzfv v${YANEURAOU_VERSION}.tar.gz 
cd YaneuraOu-${YANEURAOU_VERSION}/source 
make -j${NPROC} TARGET_CPU=${YANEURAOU_TARGET_CPU}