.DEFAULT_GOAL := all
.PHONY: all build

all: build

build:
	docker build -t scottbrown/plantuml:latest .

