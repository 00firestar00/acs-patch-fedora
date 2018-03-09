#!/bin/bash
cp /boot/config-`uname -r`* .config
make oldconfig -j 6
make bzImage -j 6
make modules -j 6
sudo make modules_install -j 6
sudo make install -j 6
