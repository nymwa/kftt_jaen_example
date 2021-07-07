#!/bin/bash

set -eux

TRAIN_EN=kftt-data-1.0/data/tok/kyoto-train.cln.en
TRAIN_JA=kftt-data-1.0/data/tok/kyoto-train.cln.ja
VALID_EN=kftt-data-1.0/data/tok/kyoto-dev.en
VALID_JA=kftt-data-1.0/data/tok/kyoto-dev.ja
TEST_EN=kftt-data-1.0/data/tok/kyoto-test.en
TEST_JA=kftt-data-1.0/data/tok/kyoto-test.ja

prepare () {
    perl lowercase.perl | python encode.py --model kftt.model
}

prepare < $TRAIN_EN > train.en
prepare < $TRAIN_JA > train.ja
prepare < $VALID_EN > valid.en
prepare < $VALID_JA > valid.ja
perl lowercase.perl < $TEST_EN > test.en
prepare < $TEST_JA > test.ja

