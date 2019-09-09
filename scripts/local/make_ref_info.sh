#!/bin/bash

# Copyright 2019 Okayama University (Katsuki Inoue)
#  Apache 2.0  (http://www.apache.org/licenses/LICENSE-2.0)

# inport argument
ref_md=$1

if [ -e ${ref_md} ]; then
  echo "${ref_md} is used." >&1
  
  echo "## References" > ref.tmp
  echo >> ref.tmp
  cat ${ref_md} >> ref.tmp
  echo >> ref.tmp

else
  echo "Warning: ${ref_md} is not found. Please update References manually" >&2

  echo "## References" > ref.tmp
  echo >> ref.tmp
  echo "- [1]: tmp_abst" >> ref.tmp
  echo >> ref.tmp

fi
