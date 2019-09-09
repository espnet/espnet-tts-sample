# libritts.tacotron2.v1

## Creator

- Takenori Yoshimura (Nagoya University) <[takenori-y](https://github.com/takenori-y)>  

## Abstract

This is tts demo of LibriTTS [1].

## Model

v.0.3.0: multi-speaker Tacotron2.v1 (tacotron2.v1)   
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

1. **ground_truth**: Recorded speech
2. **tacotron2.v1-GL**: Synthesized speech (Feature generetion:tacotron2.v1, Waveform synthesis: Griffin-Lim algorithm)
3. **tacotron2.v1-WNV**: Synthesized speech (Feature generetion:tacotron2.v1, Waveform synthesis: WaveNet vocoder)

### Sample1  

121_121726_000004_000003 "Also, a popular contrivance whereby love making may be suspended but not stopped during the picnic season. "

| **ground_truth** | **tacotron2.v1-GL** | **tacotron2.v1-WNV** |  
| --- | --- | --- |  
| <audio controls=""> <source src="../../../data/libritts/audio/ground_truth/121_121726_000004_000003.wav"> </audio> | <audio controls=""> <source src="../../../data/libritts/audio/tacotron2.v1-GL/121_121726_000004_000003.wav"> </audio> | NULL |  

### Sample2  

121_121726_000005_000001 "The beggar's plea, the politician's sceptre and the drummer's ablest assistant. "

| **ground_truth** | **tacotron2.v1-GL** | **tacotron2.v1-WNV** |  
| --- | --- | --- |  
| <audio controls=""> <source src="../../../data/libritts/audio/ground_truth/121_121726_000005_000001.wav"> </audio> | <audio controls=""> <source src="../../../data/libritts/audio/tacotron2.v1-GL/121_121726_000005_000001.wav"> </audio> | NULL |  

### Sample3  

237_126133_000002_000003 "At night, when no one knew it, the tears would come racing over the poor, forlorn little face, and would not be squeezed back. "

| **ground_truth** | **tacotron2.v1-GL** | **tacotron2.v1-WNV** |  
| --- | --- | --- |  
| <audio controls=""> <source src="../../../data/libritts/audio/ground_truth/237_126133_000002_000003.wav"> </audio> | <audio controls=""> <source src="../../../data/libritts/audio/tacotron2.v1-GL/237_126133_000002_000003.wav"> </audio> | NULL |  

### Sample4  

260_123286_000005_000001 "He examines the horizon all round with his glass, and folds his arms with the air of an injured man. "

| **ground_truth** | **tacotron2.v1-GL** | **tacotron2.v1-WNV** |  
| --- | --- | --- |  
| <audio controls=""> <source src="../../../data/libritts/audio/ground_truth/260_123286_000005_000001.wav"> </audio> | <audio controls=""> <source src="../../../data/libritts/audio/tacotron2.v1-GL/260_123286_000005_000001.wav"> </audio> | NULL |  

### Sample5  

672_122797_000002_000002 "What a nice little fir!" But this was what the Tree could not bear to hear. "

| **ground_truth** | **tacotron2.v1-GL** | **tacotron2.v1-WNV** |  
| --- | --- | --- |  
| <audio controls=""> <source src="../../../data/libritts/audio/ground_truth/672_122797_000002_000002.wav"> </audio> | <audio controls=""> <source src="../../../data/libritts/audio/tacotron2.v1-GL/672_122797_000002_000002.wav"> </audio> | NULL |  

### Other samples

[https://drive.google.com/open?id=18S_B8Ogogij34rIfJOeNF8D--uG7amz2](https://drive.google.com/open?id=18S_B8Ogogij34rIfJOeNF8D--uG7amz2)
### Synthesize speech by arbitrary text 

1. Go to Google colab ([tts_demo.ipynb](https://colab.research.google.com/github/espnet/interspeech2019-tutorial/blob/kan-bayashi/tts/tts_demo.ipynb))
2. Run "Setup envrionment"
3. Run "Use pretrained models"

Please modify the option about tts model  
Before: `!../../../utils/synth_wav.sh --models ljspeech.fastspeech.v1 example.txt`  
After:  `!../../../utils/synth_wav.sh --models libritts.tacotron2.v1 example.txt`  

## References

- [1] "LibriTTS: A Corpus Derived from LibriSpeech for Text-to-Speech," [http://www.openslr.org/60/](http://www.openslr.org/60/).

