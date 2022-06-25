#!/bin/bash

function use_libstdcxx()
{
  export SPECIAL_CXXOPTS=-stdlib=libstdc++
  make clean
  make && make tests
  make clean
}

function use_libcxx()
{
  export SPECIAL_CXXOPTS=-stdlib=libc++
  make clean
  make && make tests
  make clean
}

use_libcxx
echo -e "\n\n\n\n\n"
use_libstdcxx
