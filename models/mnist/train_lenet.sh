#!/usr/bin/env sh

mkdir -p tmp/mnist/lenet
caffe train --solver=models/mnist/lenet_solver.prototxt
