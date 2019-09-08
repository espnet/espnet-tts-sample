#!/bin/bash

# Copyright 2019 Okayama University (Katsuki Inoue)
#  Apache 2.0  (http://www.apache.org/licenses/LICENSE-2.0)

# inport argument
corpus=$1
model=$2
egs_dir="egs/${corpus}/${model}"
in_audio_dir="audio/${corpus}"
out_audio_dir="${egs_dir}/audio"
max=5

Left="ground_truth"
Middle="${model}-GL"
Right="${model}-WNV"


# make audio sir
mkdir -p ../${out_audio_dir}/${Left}
mkdir -p ../${out_audio_dir}/${Middle}
mkdir -p ../${out_audio_dir}/${Right}

# make audio_demo.tmp
cat ../layout/audio_demo.md > tmp.tmp
cat tmp.tmp | sed -e "s/Left/${Left}/g" -e "s/Middle/${Middle}/g" -e "s/Right/${Right}/g" > audio_demo.tmp
cat audio_demo.tmp > tmp.tmp

# update text
i=1
cat data/${corpus}/text | while read -r line;do
  utt_id=$(echo ${line} | awk '{print $1}')
  text=$(echo ${line} | awk '{for(i=2;i<=NF;i++){printf("%s ",$i)}}')
  cat tmp.tmp | sed -e "s~text${i}~${utt_id} \"${text}\"~g" > audio_demo.tmp
  cat audio_demo.tmp > tmp.tmp
  i=$((++i))
done

# update wav_data
i=1
find ${in_audio_dir}/${Left} -name "*.wav" | sort | while read -r filename;do
  echo ${filename}
  wav=$(basename ${filename})
  ln -s ${filename} ../${out_audio_dir}/${Left}/${wav}
  cat tmp.tmp | sed -e "s~L${i}_wavd~<audio controls=\"\"> <source src=\"${out_audio_dir}/${Left}/${wav}\"> </audio>~g" > audio_demo.tmp
  cat audio_demo.tmp > tmp.tmp
  i=$((++i))
done

i=1
find ${in_audio_dir}/${Middle} -name "*.wav" | sort | while read -r filename;do
  echo ${filename}
  wav=$(basename ${filename})
  ln -s ${filename} ../${out_audio_dir}/${Middle}/${wav}
  cat tmp.tmp | sed -e "s~M${i}_wavd~<audio controls=\"\"> <source src=\"${out_audio_dir}/${Middle}/${wav}\"> </audio>~g" > audio_demo.tmp
  cat audio_demo.tmp > tmp.tmp
  i=$((++i))
done

i=1
find ${in_audio_dir}/${Right} -name "*.wav" | sort | while read -r filename;do
  echo ${filename}
  wav=$(basename ${filename})
  ln -s ${filename} ../${out_audio_dir}/${Right}/${wav}
  cat tmp.tmp | sed -e "s~R${i}_wavd~<audio controls=\"\"> <source src=\"${out_audio_dir}/${Right}/${wav}\"> </audio>~g" > audio_demo.tmp
  cat audio_demo.tmp > tmp.tmp
  i=$((++i))
done

# update wave form
# update spectrogram
# update attentin weight

# replace no data cell into NULL
for place in L M R; do
  for ((i=1; i <= $max; i++)); do
    for type in wavd wavf spec attn; do
      cat tmp.tmp | sed -e "s/${place}${i}_${type}/NULL/g" > audio_demo.tmp
      cat audio_demo.tmp > tmp.tmp
      done
  done
done
