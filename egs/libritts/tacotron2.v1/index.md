# libritts.tacotron2.v1

## Creator
- Tomoki Hayashi (Nagoya University) <[kan-bayashi](https://github.com/kan-bayashi)>  

## Abstract

This is tts demo of LibriTTS [1].

## Model

v.0.3.0: multi-speaker Tacotron2.v1
- 1024 pt window
- 256 pt shift
- default taco2
- x-vector
- GL 1000 iters

## Environments

- system information: `Linux million5.sp.m.is.nagoya-u.ac.jp 3.10.0-862.14.4.el7.x86_64 #1 SMP Wed Sep 26 15:12:11 UTC 2018 x86_64 x86_64 x86_64 GNU/Linux`
- python version: `Python 3.6.1`
- espnet version: `espnet 0.3.1`
- chainer version: `chainer 5.0.0`
- pytorch version: `pytorch 1.0.0`
- Git hash: `f74a92c7720eb494a10d8e5b0f6a60186a5e741c`

## Model files

- model link: [https://drive.google.com/open?id=1iAXwC0AuWusa9AcFeUVkcNLG0I-hnSr3](https://drive.google.com/open?id=1iAXwC0AuWusa9AcFeUVkcNLG0I-hnSr3)
- training config file: `conf/train_pytorch_tacotron2+spkemb.yaml`
- decoding config file: `conf/decode.yaml`
- cmvn file: `data/train_clean_460/cmvn.ark`
- e2e file: `exp/train_clean_460_pytorch_taco2_r2_enc512-3x5x512-1x512_dec2x1024_pre2x256_post5x5x512_location128-15x32_cm_bn_cc_msk_pw1.0_do0.5_zo0.1_lr1e-3_ep1e-6_wd0.0_bs64_sort_by_output_mli150_mlo400_sd1/results/model.loss.best`
- e2e JSON file: `exp/train_clean_460_pytorch_taco2_r2_enc512-3x5x512-1x512_dec2x1024_pre2x256_post5x5x512_location128-15x32_cm_bn_cc_msk_pw1.0_do0.5_zo0.1_lr1e-3_ep1e-6_wd0.0_bs64_sort_by_output_mli150_mlo400_sd1/results/model.json`
- dict file: `data/lang_1char/train_clean_460_units.txt`

## Audio samples

<!--
| Audio parameter | Setting |  
| --- | --- |  
| Sampling frequency | 22050 Hz |  
| Quantization | 16 bit, LinearPCM |  
-->

1. **Ground truth**: Recorded speech
2. **Tacotron2.v1-GL**: Synthesized speech (Feature generetion:Tacotron2, Waveform synthesis: Griffin-Lim algorithm)  
3. **Tacotron2.v1-WNV**: Synthesized speech (Feature generetion:Tacotron2, Waveform synthesis: WaveNet vocoder)  

### Sample1  

| **Ground truth** | **Tacotron2.v1-GL** | **Tacotron2.v1-WNV** |  
| --- | --- | --- |  
| NULL | <audio controls=""> <source src="audio/eval/LJ050-0029.wav"> </audio> | NULL |  

### Sample2  

| **Ground truth** | **Tacotron2.v1-GL** | **Tacotron2.v1-WNV** |  
| --- | --- | --- |  
| NULL | <audio controls=""> <source src="audio/eval/LJ050-0030.wav"> </audio> | NULL |  

### Sample3  

| **Ground truth** | **Tacotron2.v1-GL** | **Tacotron2.v1-WNV** |  
| --- | --- | --- |  
| NULL | <audio controls=""> <source src="audio/eval/LJ050-0031.wav"> </audio> | NULL |  

### Sample4  

| **Ground truth** | **Tacotron2.v1-GL** | **Tacotron2.v1-WNV** |  
| --- | --- | --- |  
| NULL | <audio controls=""> <source src="audio/eval/LJ050-0032.wav"> </audio> | NULL |  

### Sample5  

| **Ground truth** | **Tacotron2.v1-GL** | **Tacotron2.v1-WNV** |  
| --- | --- | --- |  
| NULL | <audio controls=""> <source src="audio/eval/LJ050-0033.wav"> </audio> | NULL |  

### Other samples  

[https://drive.google.com/open?id=18S_B8Ogogij34rIfJOeNF8D--uG7amz2](https://drive.google.com/open?id=18S_B8Ogogij34rIfJOeNF8D--uG7amz2)


## References

- [1] "LibriTTS: A Corpus Derived from LibriSpeech for Text-to-Speech," [http://www.openslr.org/60/](http://www.openslr.org/60/).


<!--
## Acknowledgements

NULL

## Citation

NULL
-->