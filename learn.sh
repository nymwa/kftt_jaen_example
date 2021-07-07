#!/bin/bash

set -eux

cat kftt-data-1.0/data/tok/kyoto-train.cln.en kftt-data-1.0/data/tok/kyoto-train.cln.ja | perl lowercase.perl > train.jaen
python learn.py --input train.jaen --prefix kftt --vocab-size 16000 --character-coverage 0.9995 --threads 16

