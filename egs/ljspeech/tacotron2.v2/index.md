# ljspeech.tacotron2.v2

## Creator

- Tomoki Hayashi (Nagoya University) <[kan-bayashi](https://github.com/kan-bayashi)>  

## Abstract

This is tts demo of The LJ Speech Dataset [0].

### tts1 recipe

`tts1` recipe is based on Tacotron2 [1] (spectrogram prediction network) w/o WaveNet.
Tacotron2 generates log mel-filter bank from text and then converts it to linear spectrogram using inverse mel-basis.
Finally, phase components are recovered with Griffin-Lim.

(2019/06/16) we also support TTS-Transformer [3].  
(2019/06/17) we also support Feed-forward Transformer [4].  

### tts2 recipe

`tts2` recipe is based on Tacotron2's spectrogram prediction network [1] and Tacotron's CBHG module [2].
Instead of using inverse mel-basis, CBHG module is used to convert log mel-filter bank to linear spectrogram.
The recovery of the phase components is the same as `tts1`.

## Model

v.0.4.0: tacotron2.v2  
- 1024 pt window   
- 256 pt shift   
- GL 1000 iters  
- R=1   
- forward with transition agent  

## Environments

- date: `Fri Jun 14 10:51:01 JST 2019`
- system information: `Linux huracan.sp.m.is.nagoya-u.ac.jp 4.4.0-142-generic #168-Ubuntu SMP Wed Jan 16 21:00:45 UTC 2019 x86_64 x86_64 x86_64 GNU/Linux`
- python version: `Python 3.7.3`
- espnet version: `espnet 0.3.1`
- chainer version: `chainer 5.0.0`
- pytorch version: `pytorch 1.0.1.post2`
- Git hash: `c86e9311641f59fa397912d0bd2b9c0c599a1127`

## Model files

- model link: [https://drive.google.com/open?id=11T9qw8rJlYzUdXvFjkjQjYrp3iGfQ15h](https://drive.google.com/open?id=11T9qw8rJlYzUdXvFjkjQjYrp3iGfQ15h)
- training config file: `conf/tuning/train_pytorch_tacotron2.v2.yaml`
- decoding config file: `conf/decode.yaml`
- cmvn file: `data/train_no_dev/cmvn.ark`
- e2e file: `exp/train_no_dev_pytorch_train_pytorch_tacotron2.v2/results/model.last1.avg.best`
- e2e JSON file: `exp/train_no_dev_pytorch_train_pytorch_tacotron2.v2/results/model.json`
- dict file: `data/lang_1char/train_no_dev_units.txt`

## Audio samples

1. **ground_truth**: ground_truth speech
2. **tacotron2.v2-GL**: tacotron2.v2-GL speech
3. **tacotron2.v2-WNV**: tacotron2.v2-WNV speech

### Sample1  

LJ050-0029 "THAT IS REFLECTED IN DEFINITE AND COMPREHENSIVE OPERATING PROCEDURES. "

| **ground_truth** | **tacotron2.v2-GL** | **tacotron2.v2-WNV** |  
| --- | --- | --- |  
| <audio controls=""> <source src="audio/ground_truth/LJ050-0029.wav"> </audio> | <audio controls=""> <source src="audio/tacotron2.v2-GL/LJ050-0029.wav"> </audio> | <audio controls=""> <source src="audio/tacotron2.v2-WNV/"> </audio> |  
| NULL | NULL | NULL |  
| NULL | NULL | NULL |  
| NULL | NULL | NULL |  

### Sample2  

LJ050-0030 "THE COMMISSION ALSO RECOMMENDS "

| **ground_truth** | **tacotron2.v2-GL** | **tacotron2.v2-WNV** |  
| --- | --- | --- |  
| <audio controls=""> <source src="audio/ground_truth/LJ050-0030.wav"> </audio> | <audio controls=""> <source src="audio/tacotron2.v2-GL/LJ050-0030.wav"> </audio> | <audio controls=""> <source src="audio/tacotron2.v2-WNV/"> </audio> |  
| NULL | NULL | NULL |  
| NULL | NULL | NULL |  
| NULL | NULL | NULL |  

### Sample3  

LJ050-0031 "THAT THE SECRET SERVICE CONSCIOUSLY SET ABOUT THE TASK OF INCULCATING AND MAINTAINING THE HIGHEST STANDARD OF EXCELLENCE AND ESPRIT, FOR ALL OF ITS PERSONNEL. "

| **ground_truth** | **tacotron2.v2-GL** | **tacotron2.v2-WNV** |  
| --- | --- | --- |  
| <audio controls=""> <source src="audio/ground_truth/LJ050-0031.wav"> </audio> | <audio controls=""> <source src="audio/tacotron2.v2-GL/LJ050-0031.wav"> </audio> | <audio controls=""> <source src="audio/tacotron2.v2-WNV/"> </audio> |  
| NULL | NULL | NULL |  
| NULL | NULL | NULL |  
| NULL | NULL | NULL |  

### Sample4  

LJ050-0032 "THIS INVOLVES TIGHT AND UNSWERVING DISCIPLINE AS WELL AS THE PROMOTION OF AN OUTSTANDING DEGREE OF DEDICATION AND LOYALTY TO DUTY. "

| **ground_truth** | **tacotron2.v2-GL** | **tacotron2.v2-WNV** |  
| --- | --- | --- |  
| <audio controls=""> <source src="audio/ground_truth/LJ050-0032.wav"> </audio> | <audio controls=""> <source src="audio/tacotron2.v2-GL/LJ050-0032.wav"> </audio> | <audio controls=""> <source src="audio/tacotron2.v2-WNV/"> </audio> |  
| NULL | NULL | NULL |  
| NULL | NULL | NULL |  
| NULL | NULL | NULL |  

### Sample5  

LJ050-0033 "THE COMMISSION EMPHASIZES THAT IT FINDS NO CAUSAL CONNECTION BETWEEN THE ASSASSINATION "

| **ground_truth** | **tacotron2.v2-GL** | **tacotron2.v2-WNV** |  
| --- | --- | --- |  
| <audio controls=""> <source src="audio/ground_truth/LJ050-0033.wav"> </audio> | <audio controls=""> <source src="audio/tacotron2.v2-GL/LJ050-0033.wav"> </audio> | <audio controls=""> <source src="audio/tacotron2.v2-WNV/"> </audio> |  
| NULL | NULL | NULL |  
| NULL | NULL | NULL |  
| NULL | NULL | NULL |  

### Other samples

[https://drive.google.com/open?id=1cKPDQjLGs7OD8xopSK3YWIGGth37GRSm](https://drive.google.com/open?id=1cKPDQjLGs7OD8xopSK3YWIGGth37GRSm)

## References

- [0] "The LJ Speech Dataset," [https://keithito.com/LJ-Speech-Dataset/](https://keithito.com/LJ-Speech-Dataset/).
- [1] Shen, Jonathan, et al. "Natural TTS synthesis by conditioning wavenet on mel spectrogram predictions." arXiv preprint [arXiv:1712.05884](https://arxiv.org/abs/1712.05884) (2017).
- [2] Wang, Yuxuan, et al. "Tacotron: Towards end-to-end speech synthesis." arXiv preprint [arXiv:1703.10135](https://arxiv.org/abs/) (2017).
- [3] Li, Naihan, et al. "Close to human quality TTS with transformer." arXiv preprint [arXiv:1809.08895](https://arxiv.org/abs/1809.08895) (2018).
- [4] Ren, Yi, et al. "FastSpeech: Fast, Robust and Controllable Text to Speech." arXiv preprint [arXiv:1905.09263](https://arxiv.org/abs/1905.09263) (2019).

