SHELL=/bin/bash

REGISTRY?=docker.io
ORGANISATION?=iceci
IMG_VER?=1

.PHONY: build-utils

UTILS_IMG:=$(REGISTRY)/$(ORGANISATION)/utils
build-utils:
	docker build -t $(UTILS_IMG):$(IMG_VER) -f utils.Dockerfile .
	docker tag  $(UTILS_IMG):$(IMG_VER) $(UTILS_IMG):latest
	docker push $(UTILS_IMG):$(IMG_VER)
	docker push $(UTILS_IMG):latest
