## Description

This project is created to make development for Raspberry Pi Pico  devices easy. Everything is built in Docker, so it's OS independent. Put your code in `app/` folder, then compile with `Ctrl+Shift+B`. The `.uf2` and `.elf` binaries will be found at `/artifacts`. Put the pico device in bootloader mode and upload `.uf2` to your pico device.

Thanks to this project https://github.com/majbthrd/pico-debug , you can now directly debug your pico without the need for another device. Check down for more info.

## Requirements
[Docker](https://www.docker.com/products/docker-desktop)

### Debugging

[GNU Arm Embedded Toolchain](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm/downloads)

[openocd](https://github.com/earlephilhower/pico-quick-toolchain/releases/) extract the `openocd` folder to `debug-tools`

### VSCode Extensions:

[C/C++](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools)

[CMake](https://marketplace.visualstudio.com/items?itemName=twxs.cmake) <em>just for highliting the syntax of CMakeLists</em>

[Cortex-Debug](https://marketplace.visualstudio.com/items?itemName=marus25.cortex-debug) <em>needed only for debugging</em>

## Get Submodules
*It's not required*. 

`git submodule update --init`

This will clone pico-sdk and pico-examples projects. The pico-sdk is to make life easy programming with C++ extension.

## Build Project

`Run Build Task (Ctrl+Shift+B)`

`/app` folder will be sent to docker, it will get build using the CMakeLists.txt and the build binaries will be automatically copied from docker container to `/artifacts` folder.

The first time this task runs it will take a bit to build the images. 

## Debugging Project

Upload `debug-tools/pico-debug-gimmecache.uf2` to your pico device. Open `app/blink.c` file and press `F5` to start debugging.