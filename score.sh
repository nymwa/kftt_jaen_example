#!/bin/bash

set -eux

perl multi-bleu.perl test.en < output.20.txt | tee result.txt

