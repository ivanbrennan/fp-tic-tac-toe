PROJECT_NAME ?= fp-tic-tac-toe
PROJECT_ROOT ?= $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

TEST_FLAGS  = --failure-report=$$PWD/.hspec-failures
TEST_FLAGS += --rerun-all-on-success --rerun

.PHONY: build
build:
	cabal v2-build

.PHONY: run
run:
	cabal v2-run $(PROJECT_NAME)

.PHONY: test
test:
	cabal v2-run $(PROJECT_NAME)-test -- $(TEST_FLAGS)

.PHONY: lint
lint:
	hlint $(PROJECT_ROOT)/src $(PROJECT_ROOT)/test

.PHONY: clean
clean:
	rm -rf $(PROJECT_ROOT)/dist
	rm -rf $(PROJECT_ROOT)/dist-newstyle
	rm -f  $(PROJECT_ROOT)/.ghc.environment.*
