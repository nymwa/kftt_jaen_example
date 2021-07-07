#!/bin/bash

set -eux

fairseq-preprocess -s ja -t en \
    --trainpref train \
    --validpref valid \
    --testpref test \
    --destdir data-bin \
    --joined-dictionary \
    --workers 12

