#!/usr/bin/env sh

mkdir -p tmp/snapshots/cifar100

TOOLS=$CAFFE_ROOT/build/tools

$TOOLS/caffe train \
  --solver=models/cifar100/quick_solver.prototxt

# reduce learning rate by factor of 10 after 8 epochs
$TOOLS/caffe train \
  --solver=models/cifar100/quick_solver_lr1.prototxt \
  --snapshot=tmp/snapshots/cifar100/cifar100_quick_iter_4000.solverstate
