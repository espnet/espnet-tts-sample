# ljspeech.transformer.v1

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

v.0.4.0: transformer.v1
- 1024 pt window
- 256 pt shift
- GL 1000 iters
- R=1
- Large

## Environments

- date: `Sun Jun 16 10:03:47 JST 2019`
- system information: `Linux huracan.sp.m.is.nagoya-u.ac.jp 4.4.0-142-generic #168-Ubuntu SMP Wed Jan 16 21:00:45 UTC 2019 x86_64 x86_64 x86_64 GNU/Linux`
- python version: `Python 3.7.3`
- espnet version: `espnet 0.3.1`
- chainer version: `chainer 5.0.0`
- pytorch version: `pytorch 1.0.1.post2`
- Git hash: `267da3161cefeae72e9a44bd15e74c0d18591fb6`

## Model files

- model link: [https://drive.google.com/open?id=13DR-RB5wrbMqBGx_MC655VZlsEq52DyS](https://drive.google.com/open?id=13DR-RB5wrbMqBGx_MC655VZlsEq52DyS)
- training config file: `conf/tuning/train_pytorch_transformer.v1.yaml`
- decoding config file: `conf/decode.yaml`
- cmvn file: `data/train_no_dev/cmvn.ark`
- e2e file: `exp/train_no_dev_pytorch_train_pytorch_transformer.v1/results/model.last1.avg.best`
- e2e JSON file: `exp/train_no_dev_pytorch_train_pytorch_transformer.v1/results/model.json`
- dict file: `data/lang_1char/train_no_dev_units.txt`

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

[https://drive.google.com/open?id=14EboYVsMVcAq__dFP1p6lyoZtdobIL1X](https://drive.google.com/open?id=14EboYVsMVcAq__dFP1p6lyoZtdobIL1X)


## References

- [0] "The LJ Speech Dataset," [https://keithito.com/LJ-Speech-Dataset/](https://keithito.com/LJ-Speech-Dataset/).
- [1] Shen, Jonathan, et al. "Natural TTS synthesis by conditioning wavenet on mel spectrogram predictions." arXiv preprint [arXiv:1712.05884](https://arxiv.org/abs/1712.05884) (2017).
- [2] Wang, Yuxuan, et al. "Tacotron: Towards end-to-end speech synthesis." arXiv preprint [arXiv:1703.10135](https://arxiv.org/abs/) (2017).
- [3] Li, Naihan, et al. "Close to human quality TTS with transformer." arXiv preprint [arXiv:1809.08895](https://arxiv.org/abs/1809.08895) (2018).
- [4] Ren, Yi, et al. "FastSpeech: Fast, Robust and Controllable Text to Speech." arXiv preprint [arXiv:1905.09263](https://arxiv.org/abs/1905.09263) (2019).

<!--
## Acknowledgements

NULL

## Citation

NULL
-->