#!/bin/sh

if [ -f mpich/lib/libmpich.so ]; then
  echo "libmpich.so found -- nothing to build."
else
  echo "Downloading mpich source."
  wget http://www.mpich.org/static/downloads/3.4a3/mpich-3.4a3.tar.gz
  tar xfz mpich-3.4a3.tar.gz
  rm mpich-3.4a3.tar.gz
  echo "configuring and building mpich."
  mkdir mpich
  cd mpich-3.4a3
  ./configure 
  make -j2
  make 
  cd -
fi

