#!/bin/bash
mkdir -p libopus-src
mkdir -p libopusfile-src
mkdir -p libogg-src
curl -0 http://downloads.xiph.org/releases/opus/opus-1.1.tar.gz | tar -zx --strip 1 -C libopus-src/
curl -0 http://downloads.xiph.org/releases/opus/opusfile-0.6.tar.gz | tar -zx --strip 1 -C libopusfile-src/
curl -0 http://downloads.xiph.org/releases/ogg/libogg-1.3.2.tar.gz | tar -zx --strip 1 -C libogg-src/
