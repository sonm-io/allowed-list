IMAGE ?= "sonm/cryptodredge:v0.16.2"

all: build push

build:
	docker build -t ${IMAGE} .

push:
	docker push ${IMAGE}
