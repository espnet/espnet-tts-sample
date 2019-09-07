#!/bin/bash

# Copyright 2019 Okayama University (Katsuki Inoue)
#  Apache 2.0  (http://www.apache.org/licenses/LICENSE-2.0)

# inport argument
name=$1
belongs=$2
github_id=$3


echo "## Creator" > creater.tmp
echo >> creater.tmp
echo "- name (belongs) <[github_id][https://github.com/github_id]>  " \
 | sed -e "s/name/${name}/" -e "s/belongs/${belongs}/" -e "s/github_id/${github_id}/g" >> creater.tmp
echo >> creater.tmp

