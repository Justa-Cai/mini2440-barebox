#!/bin/sh
set -e 
INSTALL_DIR=/tftproot/mini2440/
if [ "x$CROSS_COMPILE" = 'x' ]  
then
    echo "import build mini2440 env"
    . ./build_mini2440_env.sh
    make mini2440_defconfig
fi
make -j 2

cp -av barebox.bin $INSTALL_DIR/
