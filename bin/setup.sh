#!/bin/sh

# Setup savvii framework 

mkdir -p ${HOME}/bin
cd ${HOME}/bin

ln -s ${here}/${this} ${this}
ln -s ${this} "savvii"
ln -s "savvii" "s"

