#!/bin/bash

# Copyright 2019 Okayama University (Katsuki Inoue)
#  Apache 2.0  (http://www.apache.org/licenses/LICENSE-2.0)

if [ $1 == "kan-bayashi" ]; then
  name="Tomoki Hayashi"
  belongs="Nagoya University"
  github_id="kan-bayashi"

elif [ $1 == "takenori-y" ]; then
  name="Takenori Yoshimura"
  belongs="Nagoya University"
  github_id="takenori-y"

else
  echo "Error: There is no account info ($1)" >&2
fi
