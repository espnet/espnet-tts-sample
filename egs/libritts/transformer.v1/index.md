# libritts.transformer.v1

## Creator

- Tomoki Hayashi (Nagoya University) <[kan-bayashi](https://github.com/kan-bayashi)>  

## Abstract

This is tts demo of LibriTTS [1].

## Model

v.0.5.0: First multi-speaker Transformer ( transformer.v1 )   
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

1. **ground_truth**: Recorded speech
2. **transformer.v1-GL**: Synthesized speech (Feature generetion:transformer.v1, Waveform synthesis: Griffin-Lim algorithm)

### Sample1  

121_121726_000004_000003 "Also, a popular contrivance whereby love making may be suspended but not stopped during the picnic season. "

| **ground_truth** | **transformer.v1-GL** |  
| --- |  
| <audio controls=""> <source src="../../../data/libritts/audio/ground_truth/121_121726_000004_000003.wav"> </audio> | <audio controls=""> <source src="../../../data/libritts/audio/transformer.v1-GL/121_121726_000004_000003.wav"> </audio> |  

### Sample2  

121_121726_000005_000001 "The beggar's plea, the politician's sceptre and the drummer's ablest assistant. "

| **ground_truth** | **transformer.v1-GL** |  
| --- | --- |  
| <audio controls=""> <source src="../../../data/libritts/audio/ground_truth/121_121726_000005_000001.wav"> </audio> | <audio controls=""> <source src="../../../data/libritts/audio/transformer.v1-GL/121_121726_000005_000001.wav"> </audio> |  

### Sample3  

237_126133_000002_000003 "At night, when no one knew it, the tears would come racing over the poor, forlorn little face, and would not be squeezed back. "

| **ground_truth** | **transformer.v1-GL** |  
| --- | --- |  
| <audio controls=""> <source src="../../../data/libritts/audio/ground_truth/237_126133_000002_000003.wav"> </audio> | <audio controls=""> <source src="../../../data/libritts/audio/transformer.v1-GL/237_126133_000002_000003.wav"> </audio> |  

### Sample4  

260_123286_000005_000001 "He examines the horizon all round with his glass, and folds his arms with the air of an injured man. "

| **ground_truth** | **transformer.v1-GL** |  
| --- | --- |  
| <audio controls=""> <source src="../../../data/libritts/audio/ground_truth/260_123286_000005_000001.wav"> </audio> | <audio controls=""> <source src="../../../data/libritts/audio/transformer.v1-GL/260_123286_000005_000001.wav"> </audio> |  

### Sample5  

672_122797_000002_000002 "What a nice little fir!" But this was what the Tree could not bear to hear. "

| **ground_truth** | **transformer.v1-GL** |  
| --- | --- |  
| <audio controls=""> <source src="../../../data/libritts/audio/ground_truth/672_122797_000002_000002.wav"> </audio> | <audio controls=""> <source src="../../../data/libritts/audio/transformer.v1-GL/672_122797_000002_000002.wav"> </audio> |  

### Other samples

[https://drive.google.com/open?id=1_vrdqjM43DdN1Qz7HJkvMQ6lCMmWLeGp](https://drive.google.com/open?id=1_vrdqjM43DdN1Qz7HJkvMQ6lCMmWLeGp)

### Synthesize speech by arbitrary text 

1. Go to [Google colab][colab] (created by [Github][github])
2. Run "0. Installation"
3. Run "3. Demonstration of the use of pretrained models"

Please modify the option about tts model  
Before: `!../../../utils/synth_wav.sh --models ljspeech.fastspeech.v1 example.txt`  
After:  `!../../../utils/synth_wav.sh --models libritts.transformer.v1 example.txt`  

[github]: https://github.com/espnet/interspeech2019-tutorial/blob/b87dca93f51da6a1d464a22e902912b64aabe466/notebooks/interspeech2019_tts/interspeech2019_tts.ipynb
[colab]: https://colab.research.google.com/github/espnet/interspeech2019-tutorial/blob/master/notebooks/interspeech2019_tts/interspeech2019_tts.ipynb

## References

- [1] "LibriTTS: A Corpus Derived from LibriSpeech for Text-to-Speech," [http://www.openslr.org/60/](http://www.openslr.org/60/).

