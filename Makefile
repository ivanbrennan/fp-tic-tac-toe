PROJECT_NAME ?= fp-tic-tac-toe
PROJECT_ROOT ?= $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

.PHONY: build
build:
	cabal v2-build

.PHONY: run
run:
	cabal v2-run $(PROJECT_NAME)

.PHONY: clean
clean:
	rm -rf $(PROJECT_ROOT)/dist
	rm -rf $(PROJECT_ROOT)/dist-newstyle
	rm -f  $(PROJECT_ROOT)/.ghc.environment.*
