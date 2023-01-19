### Introduction

This is a set of scripts to setup a dev environment capable of building
[LinuxViewer](https://github.com/CarloWood/linuxviewer) on Windows WSL2
Ubuntu 20.04. It has been tested on Windows 10 and 11.

It is being developed on Arch linux and has some steps to install prereqs
and build on Debian/Ubuntu and also Arch. Following the instructions for
Ubuntu, I found there were some missing packages from my image.

The scripts found here add everything needed to follow the config/build
instructions on Ubuntu 20.04 and Debian. The packages for Arch seem
much more comprehensive and fewer are needed.

I investigated adapting for Ubuntu 18.04 but found that some of the
dependencies rely on versions of cmake that are not available as packages
on 18.04. It may be possible by pulling the source for cmake and installing
a later version.

### Util Script

The `make_all_script.sh` simply concatenates the individual scripts into
a comprehensive all-in-one script in the proper order.

### Setup Scripts

The scripts are intended to be run in the following order and
`setup_build_linuxviewer_all.sh` has all the scripts concatenated in ths order
and can be run instead.

    setup_prereq_pkgs.sh
    setup_vulkan_dev.sh
    setup_libxml3.sh
    setup_shaderc.sh

### Build Script

The `build_linuxviewer.sh` is very opinionated and should be edited to fit your
your needs. It assumes the code will live in `~/source/linuxviewer` and that
you will use ninja to build the source. If not using ninja, simply remove the
`-GNinja` argument from the `cmake` command, the ninja and ninja install commands and replace with commands needed using your 'make' system of choice.
