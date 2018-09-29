
.PHONY: wisdom  clean

GOBIN = $(shell pwd)/build/bin



wisdom:
	build/env.sh
	go build -o ${GOBIN}/gwisdom ./cmd/gwisdom
	@echo "Done building."



clean:
	rm -fr ${GOBIN}



 # Cross Compilation Targets (xgo)
 