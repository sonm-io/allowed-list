IMAGE ?= "sonm/t-rex:v0.8.8"

all: build push

build:
	docker build -t ${IMAGE} .

push:
	docker push ${IMAGE}
