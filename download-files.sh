#!/bin/bash

mkdir -p libopus-src
mkdir -p libopusfile-src
mkdir -p libogg-src

rm -rf libopus-src/*
rm -rf libopusfile-src/*
rm -rf libogg-src/*

curl -0 http://downloads.xiph.org/releases/opus/opus-1.1.3.tar.gz | tar -zx --strip 1 -C libopus-src/
curl -0 http://downloads.xiph.org/releases/opus/opusfile-0.8.tar.gz | tar -zx --strip 1 -C libopusfile-src/
curl -0 http://downloads.xiph.org/releases/ogg/libogg-1.3.2.tar.gz | tar -zx --strip 1 -C libogg-src/

patch -p0 < opus-include.patch

##
## this is how the opus-include.patch got made
##
## make the code in lib*-src work, then execute following lines:
#rm libogg-src/.DS_Store libopus-src/.DS_Store libopusfile-src/.DS_Store
#mkdir -p libopus-src.orig
#mkdir -p libopusfile-src.orig
#mkdir -p libogg-src.orig
#curl -0 http://downloads.xiph.org/releases/opus/opus-1.1.tar.gz | tar -zx --strip 1 -C libopus-src.orig/
#curl -0 http://downloads.xiph.org/releases/opus/opusfile-0.6.tar.gz | tar -zx --strip 1 -C libopusfile-src.orig/
#curl -0 http://downloads.xiph.org/releases/ogg/libogg-1.3.2.tar.gz | tar -zx --strip 1 -C libogg-src.orig/
#diff -Naur libogg-src.orig libogg-src > opus-include.patch
#diff -Naur libopus-src.orig libopus-src >> opus-include.patch
#diff -Naur libopusfile-src.orig libopusfile-src >> opus-include.patch
#rm -rf *.orig

