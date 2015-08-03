all:
	wget --no-check-certificate http://www.cs.toronto.edu/~kriz/cifar-10-binary.tar.gz
	tar -xf cifar-10-binary.tar.gz && rm -f cifar-10-binary.tar.gz
	mv cifar-10-batches-bin/* . && rm -rf cifar-10-batches-bin

clean:
	rm data_batch*.bin batches.meta.txt readme.html test_batch.bin
