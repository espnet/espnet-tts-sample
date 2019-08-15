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

## Audio samples

| Audio parameter | Setting |  
| --- | --- |  
| Sampling frequency | 22050 Hz |  
| Quantization | 16 bit, LinearPCM |  

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


## References

- [1] Shen, Jonathan, et al. "Natural TTS synthesis by conditioning wavenet on mel spectrogram predictions." arXiv preprint [arXiv:1712.05884](https://arxiv.org/abs/1712.05884) (2017).
- [2] Wang, Yuxuan, et al. "Tacotron: Towards end-to-end speech synthesis." arXiv preprint [arXiv:1703.10135](https://arxiv.org/abs/) (2017).
- [3] Li, Naihan, et al. "Close to human quality TTS with transformer." arXiv preprint [arXiv:1809.08895](https://arxiv.org/abs/1809.08895) (2018).
- [4] Ren, Yi, et al. "FastSpeech: Fast, Robust and Controllable Text to Speech." arXiv preprint [arXiv:1905.09263](https://arxiv.org/abs/1905.09263) (2019).

## Acknowledgements


## Citation
