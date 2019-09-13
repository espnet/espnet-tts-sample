#!/bin/bash

# Copyright 2019 Okayama University (Katsuki Inoue)
#  Apache 2.0  (http://www.apache.org/licenses/LICENSE-2.0)


./run.sh ljspeech tacotron2.v1
./run.sh ljspeech tacotron2.v2
./run.sh ljspeech tacotron2.v3
./run.sh ljspeech transformer.v1
./run.sh ljspeech transformer.v2
./run.sh ljspeech fastspeech.v1
./run.sh ljspeech fastspeech.v2

# ./run.sh libritts tacotron2.v1
# ./run.sh libritts transformer.v1
