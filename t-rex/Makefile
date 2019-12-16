IMAGE ?= "sonm/t-rex:v0.11.0"

all: build push

build:
	docker build -t ${IMAGE} .

push:
	docker push ${IMAGE}
