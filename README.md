# Opusframework

A combined iOS and OSX framework integrating libopus, opusfile and libogg.

## Prepare project

The sourcecode for libopus, opusfile and libogg is not included. Before firing up Xcode the sources have to be downloaded and patched.

### Downloading source

For convience there is a download script included to be executed in the same directory as this readme. After this is successfully completed, the src directory will be populated and patched correctly.

    $ sh download-files.sh
    
    
### Building the frameworks

Now open the Opus.xcodeproj in the Opus directory. You should know your way form here.
    
## External links

 * [Opus Interactive Audio Codec](http://opus-codec.org/)
 * [Download libogg](http://xiph.org/downloads/)
 * [Download libopus and opusfile](http://opus-codec.org/downloads/)