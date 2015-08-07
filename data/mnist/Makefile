all:
	cd scripts/source && $(MAKE)
	./scripts/build/get_mnist_ubyte.sh
	./scripts/build/create_from_ubyte.sh

clean:
	cd source && $(MAKE) clean
	rm -rf lmdb/*
	rm -rf ubyte/*
