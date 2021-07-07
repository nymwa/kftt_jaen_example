# KFTTの日英翻訳をするやつ

python 3.8を使っています．
`pip -r requirements.txt`でなんとかなると思います．

1. `bash download.sh`でKFTTをダウンロード．
2. `bash learn.sh`でBPEのモデルを学習．
3. `bash prepare.sh`で前処理．
4. `bash preproc.sh`で`fairseq`用のデータにする．
5. `bash train.sh`で`fairseq`を用いて訓練する．GPUは1台使うことを想定しているので，複数台使う場合は`update-freq`を書き換えるとよいかもしれない．
6. `bash generate.sh`で生成する．
7. `bash score.sh`で評価する．BLEUで20以上出ればいいんじゃないでしょうか．

