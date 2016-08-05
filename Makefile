.DEFAULT_GOAL := all
.PHONY: all build

PLANTUML_VERSION = 8046

all: build

build:
	docker build -t plantuml .

tag:
	docker tag plantuml scottbrown/plantuml:latest
	docker tag plantuml scottbrown/plantuml:$(PLANTUML_VERSION)

release:
	docker push scottbrown/plantuml:latest
	docker push scottbrown/plantuml:$(PLANTUML_VERSION)

