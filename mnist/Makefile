all:
	cd scripts/source && $(MAKE)
	./scripts/get_mnist_ubyte.sh
	./scripts/create_from_ubyte.sh

clean:
	cd source && $(MAKE) clean
	rm -rf lmdb/*
	rm -rf ubyte/*
