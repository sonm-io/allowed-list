IMAGE ?= "sonm/zcash-cuda-ewfb:latest"

all: build push

build:
	docker build -t ${IMAGE} .

push:
	docker push ${IMAGE}
