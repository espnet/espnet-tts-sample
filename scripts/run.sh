#!/bin/bash

# Copyright 2019 Okayama University (Katsuki Inoue)
#  Apache 2.0  (http://www.apache.org/licenses/LICENSE-2.0)

set -euo pipefail

# input
corpus="ljspeech" # "ljspeech" "libritts"
model="fastspeech.v2" # "tacotron2.v1" "transformer.v1" "fastspeech.v1"
. conf/${corpus}.${model}.sh
. conf/google_colab.rev1.sh
. local/github_id.sh ${github_id}

# file setting
egs_name="${corpus}.${model}"
egs_dir="egs/${corpus}/${model}"
result_md=../data/${corpus}/info/RESULTS.md
abst_md=../data/${corpus}/info/Abstract.md
ref_md=../data/${corpus}/info/Reference.md
md_file="../${egs_dir}/index.md"

# make index.md
echo "Stage 1: index.md"
mkdir -p ../egs/${corpus}/${model}
cat ../layout/header.md | sed -e "s/tmp_egs/${egs_name}/" > ${md_file}
echo >> ${md_file}

# make creater.md
echo "Stage 2: creater.md"
local/make_creater_info.sh "${name}" "${belongs}" "${github_id}"

# make abstract inf
echo "Stage 3: abst.md"
local/make_abst_info.sh ${abst_md}

# make model info from RESULT.md
echo "Stage 4: model_conf.md"
local/make_model_info.sh ${model} ${result_md}

# make audio demo info
echo "Stage 5: audio_demo.md"
local/make_audio_demo.sh ${corpus} ${model} ${vocoder_num} ${demo_num}

# make google_colab info
echo "Stage 6: google_colab.md"
cat ../layout/google_colab.md | sed -e "s/MODEL/${corpus}.${model}/" \
| sed -e "s~github_url~${github_url}~" -e "s~colab_url~${colab_url}~" > google_colab.tmp

# make reference info
echo "Stage 7: ref.md"
local/make_ref_info.sh ${ref_md}

# update index.md
cat creater.tmp >> ${md_file}       #stage 2
cat abst.tmp >> ${md_file}          #stage 3
cat model_conf.tmp >> ${md_file}    #stage 4
cat env.tmp >> ${md_file}           #stage 4
cat model_file.tmp >> ${md_file}    #stage 4
cat audio_demo.tmp >> ${md_file}    #stage 5
cat sample_link.tmp >> ${md_file}   #stage 4
cat google_colab.tmp >> ${md_file}  #stage 6
cat ref.tmp >> ${md_file}           #stage 7
echo "${md_file} was created."

# delete tmp files
rm -f *.tmp
