IMAGE ?= "sonm/equihash-cuda-ewbf:v0.5"

all: build push

build:
	docker build -t ${IMAGE} .

push:
	docker push ${IMAGE}
