# ljspeech.fastspeech.v1

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

v.0.5.0: fastspeech.v1   
- 1024 pt window   
- 256 pt shift   
- GL 1000 iters  

## Environments

- date: `Thu Jun 20 10:44:27 JST 2019`
- python version: `Python 3.7.3`
- espnet version: `espnet 0.3.1`
- chainer version: `chainer 5.0.0`
- pytorch version: `pytorch 1.0.1.post2`
- Git hash: `d57560b16f7dfae5fcaf74ff83e94d9c16dfbe5e`

## Model files

- model link: [https://drive.google.com/open?id=17RUNFLP4SSTbGA01xWRJo7RkR876xM0i](https://drive.google.com/open?id=17RUNFLP4SSTbGA01xWRJo7RkR876xM0i)
- training config file: `conf/tuning/train_fastspeech.v1.yaml`
- decoding config file: `conf/decode.yaml`
- cmvn file: `data/train_no_dev/cmvn.ark`
- e2e file: `exp/train_no_dev_pytorch_train_fastspeech.v1/results/model.last1.avg.best`
- e2e JSON file: `exp/train_no_dev_pytorch_train_fastspeech.v1/results/model.json`
- dict file: `data/lang_1char/train_no_dev_units.txt`

## Audio samples

1. **ground_truth**: Recorded speech
2. **fastspeech.v1-GL**: Synthesized speech (Feature generetion:fastspeech.v1, Waveform synthesis: Griffin-Lim algorithm)
3. **fastspeech.v1-WNV**: Synthesized speech (Feature generetion:fastspeech.v1, Waveform synthesis: WaveNet vocoder)

### Sample1  

LJ050-0029 "THAT IS REFLECTED IN DEFINITE AND COMPREHENSIVE OPERATING PROCEDURES. "

| **ground_truth** | **fastspeech.v1-GL** | **fastspeech.v1-WNV** |  
| --- | --- | --- |  
| <audio controls=""> <source src="../../../data/ljspeech/audio/ground_truth/LJ050-0029.wav"> </audio> | <audio controls=""> <source src="../../../data/ljspeech/audio/fastspeech.v1-GL/LJ050-0029.wav"> </audio> | <audio controls=""> <source src="../../../data/ljspeech/audio/fastspeech.v1-WNV/LJ050-0029_gen.wav"> </audio> |  

### Sample2  

LJ050-0030 "THE COMMISSION ALSO RECOMMENDS "

| **ground_truth** | **fastspeech.v1-GL** | **fastspeech.v1-WNV** |  
| --- | --- | --- |  
| <audio controls=""> <source src="../../../data/ljspeech/audio/ground_truth/LJ050-0030.wav"> </audio> | <audio controls=""> <source src="../../../data/ljspeech/audio/fastspeech.v1-GL/LJ050-0030.wav"> </audio> | <audio controls=""> <source src="../../../data/ljspeech/audio/fastspeech.v1-WNV/LJ050-0030_gen.wav"> </audio> |  

### Sample3  

LJ050-0031 "THAT THE SECRET SERVICE CONSCIOUSLY SET ABOUT THE TASK OF INCULCATING AND MAINTAINING THE HIGHEST STANDARD OF EXCELLENCE AND ESPRIT, FOR ALL OF ITS PERSONNEL. "

| **ground_truth** | **fastspeech.v1-GL** | **fastspeech.v1-WNV** |  
| --- | --- | --- |  
| <audio controls=""> <source src="../../../data/ljspeech/audio/ground_truth/LJ050-0031.wav"> </audio> | <audio controls=""> <source src="../../../data/ljspeech/audio/fastspeech.v1-GL/LJ050-0031.wav"> </audio> | <audio controls=""> <source src="../../../data/ljspeech/audio/fastspeech.v1-WNV/LJ050-0031_gen.wav"> </audio> |  

### Sample4  

LJ050-0032 "THIS INVOLVES TIGHT AND UNSWERVING DISCIPLINE AS WELL AS THE PROMOTION OF AN OUTSTANDING DEGREE OF DEDICATION AND LOYALTY TO DUTY. "

| **ground_truth** | **fastspeech.v1-GL** | **fastspeech.v1-WNV** |  
| --- | --- | --- |  
| <audio controls=""> <source src="../../../data/ljspeech/audio/ground_truth/LJ050-0032.wav"> </audio> | <audio controls=""> <source src="../../../data/ljspeech/audio/fastspeech.v1-GL/LJ050-0032.wav"> </audio> | <audio controls=""> <source src="../../../data/ljspeech/audio/fastspeech.v1-WNV/LJ050-0032_gen.wav"> </audio> |  

### Sample5  

LJ050-0033 "THE COMMISSION EMPHASIZES THAT IT FINDS NO CAUSAL CONNECTION BETWEEN THE ASSASSINATION "

| **ground_truth** | **fastspeech.v1-GL** | **fastspeech.v1-WNV** |  
| --- | --- | --- |  
| <audio controls=""> <source src="../../../data/ljspeech/audio/ground_truth/LJ050-0033.wav"> </audio> | <audio controls=""> <source src="../../../data/ljspeech/audio/fastspeech.v1-GL/LJ050-0033.wav"> </audio> | <audio controls=""> <source src="../../../data/ljspeech/audio/fastspeech.v1-WNV/LJ050-0033_gen.wav"> </audio> |  

### Other samples

[https://drive.google.com/open?id=1tnTQjpz3vrYwnhLufL8iFqVo89lAzdHT](https://drive.google.com/open?id=1tnTQjpz3vrYwnhLufL8iFqVo89lAzdHT)


### Synthesize speech by arbitrary text 

1. Go to [Google colab][colab] (created by [Github][github])
2. Run "0. Installation"
3. Run "3. Demonstration of the use of pretrained models"

Please modify the option about tts model  
Before: `!../../../utils/synth_wav.sh --models ljspeech.fastspeech.v1 example.txt`  
After:  `!../../../utils/synth_wav.sh --models ljspeech.fastspeech.v1 example.txt`  

[github]: https://github.com/espnet/interspeech2019-tutorial/blob/b87dca93f51da6a1d464a22e902912b64aabe466/notebooks/interspeech2019_tts/interspeech2019_tts.ipynb
[colab]: https://colab.research.google.com/github/espnet/interspeech2019-tutorial/blob/master/notebooks/interspeech2019_tts/interspeech2019_tts.ipynb

## References

- [0] "The LJ Speech Dataset," [https://keithito.com/LJ-Speech-Dataset/](https://keithito.com/LJ-Speech-Dataset/).
- [1] Shen, Jonathan, et al. "Natural TTS synthesis by conditioning wavenet on mel spectrogram predictions." arXiv preprint [arXiv:1712.05884](https://arxiv.org/abs/1712.05884) (2017).
- [2] Wang, Yuxuan, et al. "Tacotron: Towards end-to-end speech synthesis." arXiv preprint [arXiv:1703.10135](https://arxiv.org/abs/) (2017).
- [3] Li, Naihan, et al. "Close to human quality TTS with transformer." arXiv preprint [arXiv:1809.08895](https://arxiv.org/abs/1809.08895) (2018).
- [4] Ren, Yi, et al. "FastSpeech: Fast, Robust and Controllable Text to Speech." arXiv preprint [arXiv:1905.09263](https://arxiv.org/abs/1905.09263) (2019).

