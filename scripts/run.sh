#!/bin/bash

# Copyright 2019 Okayama University (Katsuki Inoue)
#  Apache 2.0  (http://www.apache.org/licenses/LICENSE-2.0)

set -euo pipefail

# input
corpus="ljspeech"
model="tacotron2.v2"
name="Tomoki Hayashi"
belongs="Nagoya University"
github_id="kan-bayashi"

# file setting
egs_name="${corpus}.${model}"
egs_dir="egs/${corpus}/${model}"
result_md=data/${corpus}/RESULTS.md
md_file="../${egs_dir}/index.md"

# make index.md
mkdir -p ../egs/${corpus}/${model}
cat ../layout/header.md | sed -e "s/tmp_egs/${egs_name}/" > ${md_file}
echo >> ${md_file}

# make creater info
local/make_creater_info.sh "${name}" "${belongs}" "${github_id}"
echo "creater.tmp was made."

# make abstract info
echo "## Abstract" > abst.tmp
echo >> abst.tmp
echo "tmp_abst" >> abst.tmp
echo "abst.tmp was made."

# make model info from RESULT.md
local/make_model_info.sh ${model} ${result_md}
echo "model_conf.tmp was made."

# make audio demo info
local/make_audio_demo.sh ${egs_dir} 
echo "audio_demo.tmp was made."

# make reference info
echo "## References" > ref.tmp
echo >> ref.tmp
echo "- [1]: tmp_abst" >> ref.tmp
echo "ref.tmp was made."


# update index.md
cat creater.tmp >> ${md_file}
cat model_conf.tmp >> ${md_file}
cat env.tmp >> ${md_file}
cat model_file.tmp >> ${md_file}
cat audio_demo.tmp >> ${md_file}
cat sample_link.tmp >> ${md_file}
cat ref.tmp >> ${md_file}

# delete tmp files
rm -f *.tmp
