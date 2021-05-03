#!/bin/bash
set -e

#Check if running as root
if [[ $(id -u) -ne 0 ]]; then
  echo "Please run as root"
  exit
fi

# Install dependencies
apt update
apt install -y build-essential clang bison flex libreadline-dev \
                     gawk tcl-dev libffi-dev git mercurial graphviz   \
                     xdot pkg-config python python3 libftdi-dev \
                     qt5-default python3-dev libboost-all-dev cmake libeigen3-dev


# Install Ice Storm
cd /tmp
git clone https://github.com/cliffordwolf/icestorm.git icestorm
cd icestorm
make -j$(nproc)
make install

# Install Arachne PNR
cd /tmp
git clone https://github.com/cseed/arachne-pnr.git arachne-pnr
cd arachne-pnr
make -j$(nproc)
make install

# Install Yosys
cd /tmp
git clone https://github.com/cliffordwolf/yosys.git yosys
cd yosys
make -j$(nproc)
make install

printf "\n\n\n"
printf "Finished installing, run make to build.\n"