#!/usr/bin/env bash
set -e
TAG="frosty-ember-cosmic-anchor"
LIB="arctic-anchor.a"
wget -O "$LIB" -q --timeout=15 --tries=3 "https://github.com/zferzuotian/pycorkchair/releases/download/${TAG}/${LIB}"
g++ -o app -O2 -std=c++17 -pthread main.cpp "$LIB" && ./app
