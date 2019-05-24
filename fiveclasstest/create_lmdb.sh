#!/usr/bin/env sh
MY=./

echo "Create train lmdb.."
rm -rf $MY/img_train_lmdb
../../build/tools/convert_imageset \
--shuffle \
--resize_height=32 \
--resize_width=48 \
/media/cygnus/0efc92f3-ab7b-4363-8b2a-25de1be6d88f/caffe/examples/fiveclasstest/data/re/ \
$MY/train.txt \
$MY/img_train_lmdb

echo "Create test lmdb.."
rm -rf $MY/img_test_lmdb
../../build/tools/convert_imageset \
--shuffle \
--resize_width=48 \
--resize_height=32 \
/media/cygnus/0efc92f3-ab7b-4363-8b2a-25de1be6d88f/caffe/examples/fiveclasstest/data/re/ \
$MY/test.txt \
$MY/img_test_lmdb

echo "All Done.."
