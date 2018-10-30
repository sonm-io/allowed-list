IMAGE ?= "sonm/t-rex:v0.7.2"

all: build push

build:
	docker build -t ${IMAGE} .

push:
	docker push ${IMAGE}
