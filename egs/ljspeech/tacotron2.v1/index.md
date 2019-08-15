# ljspeech.tacotron2.v1

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

v.0.4.0: tacotron2.v1 
- 1024 pt window
- 256 pt shift
- GL 1000 iters
- R=2
- location-sensitive

## Environments

<details><summary>Click to check detail.</summary>
<dev>

- date: `Mon Jun 10 10:15:51 JST 2019`
- python version: `Python 3.7.3`
- espnet version: `espnet 0.3.1`
- chainer version: `chainer 5.0.0`
- pytorch version: `pytorch 1.0.1.post2`
- Git hash: `c86e9311641f59fa397912d0bd2b9c0c599a1127`

</dev>
</details>

## Model files

<details><summary>Click to check detail.</summary>
<dev>

- model link: https://drive.google.com/open?id=1dKzdaDpOkpx7kWZnvrvx2De7eZEdPHZs  
- training config file: `conf/tuning/train_pytorch_tacotron2.v1.yaml`  
- decoding config file: `conf/decode.yaml`  
- cmvn file: `data/train_no_dev/cmvn.ark`  
- e2e file: `exp/train_no_dev_pytorch_train_pytorch_tacotron2.v1/results/model.last1.avg.best`  
- e2e JSON file: `exp/train_no_dev_pytorch_train_pytorch_tacotron2.v1/results/model.json`  
- dict file: `data/lang_1char/train_no_dev_units.txt`  

</dev>
</details>

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

[Google Drive](https://drive.google.com/open?id=1ZIDPpb1Bt9V8mrnJCCptMcpIH3SpuyrD)

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
