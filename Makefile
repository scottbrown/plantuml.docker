.DEFAULT_GOAL := all
.PHONY: all build tag release shell test

REPOSITORY = scottbrown
PLANTUML_VERSION = 8046
IMAGE_NAME = plantuml

all: build

build:
	docker build -t $(IMAGE_NAME) .

tag:
	docker tag $(IMAGE_NAME) $(REPOSITORY)/$(IMAGE_NAME):latest
	docker tag $(IMAGE_NAME) $(REPOSITORY)/$(IMAGE_NAME):$(PLANTUML_VERSION)

release:
	docker push $(REPOSITORY)/$(IMAGE_NAME):latest
	docker push $(REPOSITORY)/$(IMAGE_NAME):$(PLANTUML_VERSION)

shell:
	docker run --rm -it -v $(PWD):/output --entrypoint ash $(IMAGE_NAME)

test:
	docker run --rm -v $(PWD)/test:/output $(IMAGE_NAME) diagram.plantuml

