
.PHONY: wisdom  clean

GOBIN = $(shell pwd)/build/bin



wisdom:
	build/env.sh
	go build -o ./build/bin/gwisdom ./cmd/gwisdom
	@echo "Done building."



clean:
	rm -fr ${BUILD_TARGET}



 # Cross Compilation Targets (xgo)
 