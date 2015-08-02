# Opusframework

A combined iOS and OSX framework integrating libopus, libopusfile and libogg.

## Prepare Project

The sourcecode for libopus, opusfile and libogg is not included. Before firing up Xcode the sources have to be downloaded and patched.

### Downloading Source

For convience there is a download script included to be executed in the same directory as this readme. After this is successfully completed, the src directories will be populated and patched correctly.

    $ sh download-files.sh


### Building The Frameworks

Now open the Opus.xcodeproj in the Opus directory. You should know your way form here.

### Including The Framework

This framework is not meant to be installed into a system library folder (which doesn't work on iOS anyway) but to be included in an application. To add a "private" framework to your project that gets bundled to your app a few steps are necessary:

 * Drag the OpusXXX.framework file into your Xcode project, be sure to tick 'Copy Files to Directory'
 * Add a new 'Copy File Build Phase' to the target
 * Set 'Destination' to 'Frameworks'
 * Drag in the OpusXXX.framework

## TODOs

 * Maybe some of the utility functions of `opus-tools` would be nice to have 

## External Links

 * [Opus Interactive Audio Codec](http://opus-codec.org/)
 * [Download libogg](http://xiph.org/downloads/)
 * [Download libopus and opusfile](http://opus-codec.org/downloads/)
