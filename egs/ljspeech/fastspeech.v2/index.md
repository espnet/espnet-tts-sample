# ljspeech.fastspeech.v2

## Creator
- Tomoki Hayashi (Nagoya University) <[kan-bayashi](https://github.com/kan-bayashi)>  

## Abstract

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

v.0.5.0: fastspeech.v2
- 1024 pt window
- 256 pt shift
- GL 1000 iters

## Environments

- date: `Wed Jun 26 02:27:43 JST 2019`
- python version: `3.7.3 (default, Mar 27 2019, 22:11:17)  [GCC 7.3.0]`
- espnet version: `espnet 0.3.1`
- chainer version: `chainer 5.0.0`
- pytorch version: `pytorch 1.0.1.post2`
- Git hash: `44aa99987ed524dcb5f98421fb3f61df7919ef49`

## Model files

- model link: [https://drive.google.com/open?id=1zD-2GMrWM3thaDpS3h3rkTU4jIC0wc5B](https://drive.google.com/open?id=1zD-2GMrWM3thaDpS3h3rkTU4jIC0wc5B)
- training config file: `conf/tuning/train_fastspeech.v2.yaml`
- decoding config file: `conf/decode.yaml`
- cmvn file: `data/train_no_dev/cmvn.ark`
- e2e file: `exp/train_no_dev_pytorch_train_fastspeech.v2/results/model.last1.avg.best`
- e2e JSON file: `exp/train_no_dev_pytorch_train_fastspeech.v2/results/model.json`
- dict file: `data/lang_1char/train_no_dev_units.txt`

## Audio samples

<!--
| Audio parameter | Setting |  
| --- | --- |  
| Sampling frequency | 22050 Hz |  
| Quantization | 16 bit, LinearPCM |  
-->

1. **Ground truth**: Recorded speech
2. **Fastspeech.v2-GL**: Synthesized speech (Feature generetion:Fastspeech, Waveform synthesis: Griffin-Lim algorithm)  
3. **Fastspeech.v2-WNV**: Synthesized speech (Feature generetion:Fastspeech, Waveform synthesis: WaveNet vocoder)  

### Sample1  

| **Ground truth** | **Fastspeech.v2-GL** | **Fastspeech.v2-WNV** |  
| --- | --- | --- |  
| NULL | <audio controls=""> <source src="audio/eval/LJ050-0029.wav"> </audio> | NULL |  

### Sample2  

| **Ground truth** | **Fastspeech.v2-GL** | **Fastspeech.v2-WNV** |  
| --- | --- | --- |  
| NULL | <audio controls=""> <source src="audio/eval/LJ050-0030.wav"> </audio> | NULL |  

### Sample3  

| **Ground truth** | **Fastspeech.v2-GL** | **Fastspeech.v2-WNV** |  
| --- | --- | --- |  
| NULL | <audio controls=""> <source src="audio/eval/LJ050-0031.wav"> </audio> | NULL |  

### Sample4  

| **Ground truth** | **Fastspeech.v2-GL** | **Fastspeech.v2-WNV** |  
| --- | --- | --- |  
| NULL | <audio controls=""> <source src="audio/eval/LJ050-0032.wav"> </audio> | NULL |  

### Sample5  

| **Ground truth** | **Fastspeech.v2-GL** | **Fastspeech.v2-WNV** |  
| --- | --- | --- |  
| NULL | <audio controls=""> <source src="audio/eval/LJ050-0033.wav"> </audio> | NULL |  

### Other samples  

[https://drive.google.com/open?id=1PSxs1VauIndwi8d5hJmZlppGRVu2zuy5](https://drive.google.com/open?id=1PSxs1VauIndwi8d5hJmZlppGRVu2zuy5)

## References

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