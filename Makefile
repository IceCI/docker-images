SHELL=/bin/bash

REGISTRY?=docker.io
ORGANISATION?=iceci
IMG_VER?=2

.PHONY: build-utils build-utils-arm

UTILS_IMG:=$(REGISTRY)/$(ORGANISATION)/utils
build-utils:
	docker build -t $(UTILS_IMG):$(IMG_VER) -f utils.Dockerfile .
	docker push $(UTILS_IMG):$(IMG_VER)

build-utils-arm:
	docker build -t $(UTILS_IMG)-arm:$(IMG_VER) -f utils-arm.Dockerfile .
	docker push $(UTILS_IMG)-arm:$(IMG_VER)
