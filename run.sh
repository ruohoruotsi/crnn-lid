#!/bin/bash

# .wav files were generated from the source .m4a  with the following command:
# ls *.m4a | xargs -P 5 -I % ffmpeg -ss 0 -to 3000  -i % -ac 1 -ar 16000 %.wav
# courtesy of https://www.joshcurry.co.uk/posts/ffmpeg-convert-multiple-files-using-xargs

source venv/bin/activate
cd /Users/iroro/github/crnn-lid/keras
python predict.py --model ../web-server/model/2017-01-31-14-29-14.CRNN_EN_DE_FR_ES_CN_RU.model --input $1 > $1.results.txt 
deactivate 
