#!/bin/bash

# Copyright 2019 Okayama University (Katsuki Inoue)
#  Apache 2.0  (http://www.apache.org/licenses/LICENSE-2.0)

# inport argument
egs_dir=$1
model=$(basename ${egs_dir})
audio_dir=${egs_dir}/audio

Left="ground_truth"
Middle="${model}-GL"
Right="${model}-WNV"


# make audio sir
mkdir -p ${audio_dir}/${Left}
mkdir -p ${audio_dir}/${Middle}
mkdir -p ${audio_dir}/${Right}

# make audio_demo.tmp
cat ../layout/audio_demo.md > tmp.tmp
cat tmp.tmp | sed -e "s/Left/${Left}/g" -e "s/Middle/${Middle}/g" -e "s/Right/${Right}/g" > audio_demo.tmp
cat audio_demo.tmp > tmp.tmp

# update wav_data
# update wave form
# update spectrogram
# update attentin weight
