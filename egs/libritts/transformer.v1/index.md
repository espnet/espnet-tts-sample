# libritts.transformer.v1

## Creator
- Tomoki Hayashi (Nagoya University) <[kan-bayashi](https://github.com/kan-bayashi)>  

## Abstract

This demo is about LibriTTS [1].

## Model

v.0.5.0: First multi-speaker Transformer
- 1024 pt window
- 256 pt shift
- x-vector with add integration
- fast GL 64 iters

## Environments

- date: `Mon Aug 12 20:14:55 JST 2019`
- python version: `3.7.3 (default, Mar 27 2019, 22:11:17)  [GCC 7.3.0]`
- espnet version: `espnet 0.5.0`
- chainer version: `chainer 6.0.0`
- pytorch version: `pytorch 1.0.1.post2`
- Git hash: `d359148ebecf16440526cf0b326dde58960e2d16`
  - Commit date: `Sun Aug 11 23:08:55 2019 +0900`

## Model files

- model link: [https://drive.google.com/open?id=1Xj73mDPuuPH8GsyNO8GnOC3mn0_OK4g3](https://drive.google.com/open?id=1Xj73mDPuuPH8GsyNO8GnOC3mn0_OK4g3)
- training config file: `conf/train_pytorch_transformer+spkemb.yaml`
- decoding config file: `conf/decode.yaml`
- cmvn file: `data/train_clean_460/cmvn.ark`
- e2e file: `exp/train_clean_460_pytorch_train_pytorch_transformer+spkemb/results/model.last1.avg.best`
- e2e JSON file: `exp/train_clean_460_pytorch_train_pytorch_transformer+spkemb/results/model.json`
- dict file: `data/lang_1char/train_clean_460_units.txt`

## Audio samples

<!--
| Audio parameter | Setting |  
| --- | --- |  
| Sampling frequency | 22050 Hz |  
| Quantization | 16 bit, LinearPCM |  
-->

1. **Ground truth**: Recorded speech
2. **transformer.v1-GL**: Synthesized speech (Feature generetion:transformer, Waveform synthesis: Griffin-Lim algorithm)  
3. **transformer.v1-WNV**: Synthesized speech (Feature generetion:transformer, Waveform synthesis: WaveNet vocoder)  

### Sample1  

| **Ground truth** | **transformer.v1-GL** | **transformer.v1-WNV** |  
| --- | --- | --- |  
| NULL | <audio controls=""> <source src="audio/eval/LJ050-0029.wav"> </audio> | NULL |  

### Sample2  

| **Ground truth** | **transformer.v1-GL** | **transformer.v1-WNV** |  
| --- | --- | --- |  
| NULL | <audio controls=""> <source src="audio/eval/LJ050-0030.wav"> </audio> | NULL |  

### Sample3  

| **Ground truth** | **transformer.v1-GL** | **transformer.v1-WNV** |  
| --- | --- | --- |  
| NULL | <audio controls=""> <source src="audio/eval/LJ050-0031.wav"> </audio> | NULL |  

### Sample4  

| **Ground truth** | **transformer.v1-GL** | **transformer.v1-WNV** |  
| --- | --- | --- |  
| NULL | <audio controls=""> <source src="audio/eval/LJ050-0032.wav"> </audio> | NULL |  

### Sample5  

| **Ground truth** | **transformer.v1-GL** | **transformer.v1-WNV** |  
| --- | --- | --- |  
| NULL | <audio controls=""> <source src="audio/eval/LJ050-0033.wav"> </audio> | NULL |  

### Other samples  

[https://drive.google.com/open?id=1_vrdqjM43DdN1Qz7HJkvMQ6lCMmWLeGp](https://drive.google.com/open?id=1_vrdqjM43DdN1Qz7HJkvMQ6lCMmWLeGp)


## References

- [1] "LibriTTS: A Corpus Derived from LibriSpeech for Text-to-Speech," [http://www.openslr.org/12](http://www.openslr.org/12).

<!--
## Acknowledgements

NULL

## Citation

NULL
-->