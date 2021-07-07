#!/bin/bash

set -eux

fairseq-interactive data-bin \
    --buffer-size 1024 \
    --batch-size 128 \
    --path checkpoints/checkpoint20.pt \
    --beam 4 \
    --lenpen 0.6 \
    < test.ja \
    | grep '^H' \
    | cut -f 3 \
    | python decode.py \
    > output.20.txt

