#!/bin/bash

# Copyright 2019 Okayama University (Katsuki Inoue)
#  Apache 2.0  (http://www.apache.org/licenses/LICENSE-2.0)

# inport argument
corpus=$1
model=$2
vocoder_num=$(( $3+1 ))
demo_num=$4

egs_dir="egs/${corpus}/${model}"
in_audio_dir="../data/${corpus}/${model}/wav"
in_att_ws_dir="../data/${corpus}/${model}/att_ws"
in_probs_dir="../data/${corpus}/${model}/probs"
max=5

Left="ground_truth"
Middle="${model}_GL"
Right="${model}_WNV"

Left_abst="Recorded speech"
Middle_abst="Synthesized speech (Feature generetion:${model}, Waveform synthesis: Griffin-Lim algorithm)"
Right_abst="Synthesized speech (Feature generetion:${model}, Waveform synthesis: WaveNet vocoder)"

# make audio_demo.tmp
if [ ${demo_num} = 1 ]; then
  layout="../layout/audio_demo${vocoder_num}.md"
elif [ ${demo_num} = 2 ]; then
  layout="../layout/audio_demo${vocoder_num}_att.md"
elif [ ${demo_num} = 3 ]; then
  layout="../layout/audio_demo${vocoder_num}_sp_att.md"
fi

cat ${layout} > tmp.tmp
cat tmp.tmp | sed -e "s/Left speech/${Left_abst}/" -e "s/Middle speech/${Middle_abst}/" -e "s/Right speech/${Right_abst}/" \
| sed -e "s/Left/${Left}/g" -e "s/Middle/${Middle}/g" -e "s/Right/${Right}/g" > audio_demo.tmp
cat audio_demo.tmp > tmp.tmp

# update text
i=1
cat ../data/${corpus}/${model}/text/text | while read -r line;do
  utt_id=$(echo ${line} | awk '{print $1}')
  text=$(echo ${line} | awk '{for(i=2;i<=NF;i++){printf("%s ",$i)}}')
  cat tmp.tmp | sed -e "s~text${i}~${utt_id} \"${text}\"~g" > audio_demo.tmp
  cat audio_demo.tmp > tmp.tmp
  i=$((++i))
done

# update wav_data
i=1
find ../data/${corpus}/${Left}/wav -name "*.wav" | sort | while read -r filename;do
  echo ${filename}
  cat tmp.tmp | sed -e "s~L${i}_wavd~<audio controls=\"\"> <source src=\"../../${filename}\"> </audio>~g" > audio_demo.tmp
  cat audio_demo.tmp > tmp.tmp
  i=$((++i))
done

i=1
find ${in_audio_dir}_GL -name "*.wav" | sort | while read -r filename;do
  echo ${filename}
  cat tmp.tmp | sed -e "s~M${i}_wavd~<audio controls=\"\"> <source src=\"../../${filename}\"> </audio>~g" > audio_demo.tmp
  cat audio_demo.tmp > tmp.tmp
  i=$((++i))
done

if [ ${vocoder_num} -gt 2 ]; then
  i=1
  find ${in_audio_dir}_WNV_r9y9 -name "*.wav" | sort | while read -r filename;do
    echo ${filename}
    cat tmp.tmp | sed -e "s~R${i}_wavd~<audio controls=\"\"> <source src=\"../../${filename}\"> </audio>~g" > audio_demo.tmp
    cat audio_demo.tmp > tmp.tmp
    i=$((++i))
  done
fi

# for debug
# for ((i=1; i <= $max; i++)); do
#   cat tmp.tmp | sed -e "s~R${i}_wavd~<audio controls=\"\"> <source src=\"audio/${Right}/${wav}\"> </audio>~g" > audio_demo.tmp
#   cat audio_demo.tmp > tmp.tmp
# done

# update wave form
# update spectrogram

# update attentin weight
i=1
find ${in_att_ws_dir} -name "*.png" | sort | while read -r filename;do
  echo ${filename}
  cat tmp.tmp | sed -e "s~M${i}_attn~<img src=\"../../${filename}\" width=\"320px\">~g" > audio_demo.tmp
  cat audio_demo.tmp > tmp.tmp
  i=$((++i))
done

# update probability
i=1
find ${in_probs_dir} -name "*.png" | sort | while read -r filename;do
  echo ${filename}
  cat tmp.tmp | sed -e "s~M${i}_probs~<img src=\"../../${filename}\" width=\"320px\">~g" > audio_demo.tmp
  cat audio_demo.tmp > tmp.tmp
  i=$((++i))
done

# replace no data cell into NULL
for place in L M R; do
  for ((i=1; i <= $max; i++)); do
    for type in wavd wavf spec attn; do
      cat tmp.tmp | sed -e "s/${place}${i}_${type}/NULL/g" > audio_demo.tmp
      cat audio_demo.tmp > tmp.tmp
      done
  done
done

