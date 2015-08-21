all:
	wget --no-check-certificate http://www.cs.toronto.edu/~kriz/cifar-10-binary.tar.gz
	tar -xf cifar-10-binary.tar.gz && rm -f cifar-10-binary.tar.gz
	mv cifar-10-batches-bin binary

convert:
	mkdir -p build/
	c++ src/convert_cifar_data.cpp $(CAFFE_ROOT)/build/lib/libcaffe.a -I$(CAFFE_ROOT)/include -I$(CAFFE_ROOT)/.build_release/src -I$(NVIDIA_CUDA_PATH)/include -lglog -lprotobuf -lleveldb -llmdb -o build/convert_cifar_data -D CPU_ONLY
	rm -rf lmdb && mkdir -p lmdb
	./build/convert_cifar_data $(PWD)/binary lmdb lmdb
	$(CAFFE_ROOT)/build/tools/compute_image_mean -backend lmdb lmdb/cifar10_train_lmdb mean.binaryproto

clean:
	rm -rf mean.binaryproto lmdb binary build
