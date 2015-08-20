# Datasets

This repo holds scripts to fetch common datasets used by the group.

Each directory contains a `Makefile` that will pull down the relevant datasets
with a simple call of `make`.

Remember, that this repo does not hold the datasets themselves. _Please do not
add datasets directly to this repo!_

You will generally need `wget` installed to fetch data. Some of the datasets
require additional dependencies to pull. Notes can be found in the `README.md`
files in each datasets directory.

## Installation with Caffe (CPU only) on OSX

Install homebrew and dependencies if you don't have them:

    # intall homebrew
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    
    # install dependencies
    brew install protobuf boost gflags glog homebrew/science/opencv hdf5 leveldb lmdb wget

Install Caffe:

    # cd to wherever you store code repos
    cd ~/code
    
    # clone caffe repo
    git clone https://github.com/BVLC/caffe.git
    cd caffe
    
    # copy config file
    cp Makefile.config.example Makefile.config
    
    # edit config to for CPU_ONLY (alternatively use text editor)
    sed -e "s/# CPU_ONLY := 1/CPU_ONLY := 1/g" Makefile.config > Makefile.config.tmp
    mv Makefile.config.tmp Makefile.config
    
    # build caffe
    make
    

Using a text editor, add the following to your shell profile modified for the correct paths (`~/.bash_profile` if you use bash):

    export CAFFE_ROOT=$HOME/code/caffe
    export PATH=$PATH:$CAFFE_ROOT/build/tools
    export DLYD_FALLBACK_LIBRARY_PATH=$CAFFE_ROOT/build/lib:$DYLD_FALLBACK_LIBRARY_PATH

Clone the datasets:

    cd ~/code
    git clone https://github.com/buddeep/buddeep-datasets.git

Using a text editor, add to your shell profile:

    export BUDDEEP_DATASETS_PATH=$HOME/code/buddeep-datasets

Reload your shell profile (for ~/.bash_profile)
<code>
source ~/.bash_profile
</code>

Let's fetch MNIST data.

    cd $BUDDEEP_DATASETS_PATH
    cd data/mnist
    make

Let's train the Caffe MNIST model.

    cd $BUDDEEP_DATASETS_PATH
    ./models/mnist/train_lenet.sh
