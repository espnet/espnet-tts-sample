### Synthesize speech by arbitrary text 

1. Go to Google colab ([tts_demo.ipynb](https://colab.research.google.com/github/espnet/interspeech2019-tutorial/blob/kan-bayashi/tts/tts_demo.ipynb))
2. Run "Setup envrionment"
3. Run "Use pretrained models"

Please modify the option about tts model  
Before: `!../../../utils/synth_wav.sh --models ljspeech.fastspeech.v1 example.txt`  
After:  `!../../../utils/synth_wav.sh --models MODEL example.txt`  

