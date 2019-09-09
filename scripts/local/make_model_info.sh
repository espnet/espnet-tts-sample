#!/bin/bash

# Copyright 2019 Okayama University (Katsuki Inoue)
#  Apache 2.0  (http://www.apache.org/licenses/LICENSE-2.0)

# inport argument
model=$1
result_md=$2

# extract model info
end_line=$(cat ${result_md} | wc -l)
model_line=$(grep -n "${model} " ${result_md} | awk -F':' '{print $1}')
tail -n $((end_line - model_line + 1)) ${result_md} | head -n 26 > result_md.tmp

# make model_conf.tmp
echo "## Model" > model_conf.tmp
echo >> model_conf.tmp
head -n 1 result_md.tmp | awk '{printf("%s %s  \n",$2,$3)}' >> model_conf.tmp
head -n 1 result_md.tmp | awk '{for(i=4;i<=NF;i++){printf(" %s",$i)}}' \
  | awk -F'/' '{for(i=1;i<=NF;i++){printf("-%s  \n",$i)}}' >> model_conf.tmp
echo >> model_conf.tmp

# make env.tmp & model_file.tmp & sample_link.tmp
for URL in $(grep "https:.*" -o result_md.tmp); do
    cat result_md.tmp | sed "s~${URL}~[${URL}](${URL})~" > env_model.tmp
    cat env_model.tmp > result_md.tmp
done
cat result_md.tmp | awk '{if($1=="##"){count++};if(count==1){print $0}}' > env.tmp
cat result_md.tmp | awk '{if($1=="##"){count++};if(count==2){print $0}}' > model_file.tmp
cat result_md.tmp | awk '{if($1=="##"){count++};if(count==3){print $0}}' | sed -e 's/## Samples/### Other samples/' > sample_link.tmp

rm -f result_md.tmp
rm -f env_model.tmp


