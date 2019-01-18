#!/bin/bash
cp /boot/config-`uname -r`* .config
make oldconfig -j 8
make bzImage -j 8
make modules -j 8
sudo make modules_install -j 8
sudo make install -j 8
