IMAGE ?= "sonm/cryptodredge:v0.19.1"

all: build push

build:
	docker build -t ${IMAGE} .

push:
	docker push ${IMAGE}
