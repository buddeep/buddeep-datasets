CAFFE_ROOT := $(shell echo $(CAFFE_ROOT))

LIBS=-lglog -lgflags -lprotobuf -lleveldb -llmdb -lm

all:
	mkdir -p ../build
	c++ -Wall convert_mnist_data.cpp $(LIBS) -I $(CAFFE_ROOT)/include -I$(CAFFE_ROOT)/.build_release/src/ $(CAFFE_ROOT)/build/lib/libcaffe.a -o ../build/convert_mnist_data.bin

clean:
	rm -rf ../build/convert_mnist_data.bin
