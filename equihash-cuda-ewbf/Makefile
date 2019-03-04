IMAGE ?= "sonm/equihash-cuda-ewbf:v0.6"

all: build push

build:
	docker build -t ${IMAGE} .

push:
	docker push ${IMAGE}
