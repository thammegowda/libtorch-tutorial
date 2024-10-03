#!/usr/bin/env bash

# Author: Thamme Gowda on 2024-10-03
set -euo pipefail
MYDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

get_mnist(){
    local OUT=$MYDIR/MNIST/raw
    [[ -f $OUT/._OK ]] && {
        echo "$OUT/._OK exists. skipping"
        return
    }
    mkdir -p $OUT

    BASE="http://yann.lecun.com/exdb/mnist"   # got 403 err
    BASE="https://storage.googleapis.com/cvdf-datasets/mnist"
    # Download the MNIST dataset
    wget -P $OUT $BASE/train-images-idx3-ubyte.gz
    wget -P $OUT $BASE/train-labels-idx1-ubyte.gz
    wget -P $OUT $BASE/t10k-images-idx3-ubyte.gz
    wget -P $OUT $BASE/t10k-labels-idx1-ubyte.gz
    # Unzip the downloaded files
    gunzip $OUT/*.gz 
    touch $OUT/._OK
    echo "MNIST dataset downloaded and extracted successfully."
}


get_mnist