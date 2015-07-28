#!/usr/bin/env sh
# This script converts the mnist data into lmdb/leveldb format,
# depending on the value assigned to $BACKEND.

DIR="$( cd "$(dirname "$0")" ; pwd -P )"
cd $DIR

BIN_DIR=$DIR/.
UBYTE_DIR=$DIR/../ubyte
LMDB_DIR=$DIR/../lmdb

BACKEND="lmdb"

mkdir -p $LMDB_DIR

echo "Creating ${BACKEND}..."

$BIN_DIR/convert_mnist_data.bin $UBYTE_DIR/train-images-idx3-ubyte \
  $UBYTE_DIR/train-labels-idx1-ubyte $LMDB_DIR/mnist_train_${BACKEND} --backend=${BACKEND}
$BIN_DIR/convert_mnist_data.bin $UBYTE_DIR/t10k-images-idx3-ubyte \
  $UBYTE_DIR/t10k-labels-idx1-ubyte $LMDB_DIR/mnist_test_${BACKEND} --backend=${BACKEND}

echo "Done."
