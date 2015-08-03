#!/usr/bin/env sh

mkdir -p tmp/snapshots/cifar100

TOOLS=$CAFFE_ROOT/build/tools

$TOOLS/caffe train \
    --solver=./models/cifar100/full_solver.prototxt

# reduce learning rate by factor of 10
$TOOLS/caffe train \
    --solver=./models/cifar100/full_solver_lr1.prototxt \
    --snapshot=./tmp/snapshots/cifar100/cifar100_full_iter_60000.solverstate

# reduce learning rate by factor of 10
$TOOLS/caffe train \
    --solver=./models/cifar100/full_solver_lr2.prototxt \
    --snapshot=./tmp/snapshots/cifar100/cifar100_full_iter_65000.solverstate
