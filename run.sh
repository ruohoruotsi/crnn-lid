#!/bin/bash

source venv/bin/activate
cd /Users/iroro/github/crnn-lid/keras
python predict.py --model ../web-server/model/2017-01-31-14-29-14.CRNN_EN_DE_FR_ES_CN_RU.model --input $1 > $1.results.txt 
deactivate 
