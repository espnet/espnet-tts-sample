#!/bin/bash

# Copyright 2019 Okayama University (Katsuki Inoue)
#  Apache 2.0  (http://www.apache.org/licenses/LICENSE-2.0)

# inport argument
abst_md=$1

if [ -e ${abst_md} ]; then
  echo "${abst_md} is used." >&1
  
  echo "## Abstract" > abst.tmp
  echo >> abst.tmp
  cat ${abst_md} >> abst.tmp
  echo >> abst.tmp

else
  echo "Warning: ${abst_md} is not found. Please update Abstract manually" >&2

  echo "## Abstract" > abst.tmp
  echo >> abst.tmp
  echo "tmp_abst" >> abst.tmp
  echo >> abst.tmp

fi
